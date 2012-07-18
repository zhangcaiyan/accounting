# coding: utf-8

class Zhangmu < ActiveRecord::Base
  symbolize :shouzhi, in: [:zhichu, :shouru], methods: true, scopes: true

  default_value_for :shouzhi, "zhichu"

  belongs_to :user
  belongs_to :fenlei
  belongs_to :zhangben
  belongs_to :people

  validates :fee, numericality: true
  validates_presence_of :date, :fee, :user_id, :shouzhi

  def self.fenleibi(zhangmus)
    quanbu_zhichu = quanbu_zhichu(zhangmus)
    fenleibi = []
    zhangmus.where(shouzhi: :zhichu).group(:fenlei_id).collect{|zhangmu| zhangmu.fenlei}.each do |fenlei|
      fenlei_zhichu = quanbu_zhichu(zhangmus.where(fenlei_id: fenlei.id))
      fenleibi << ["#{fenlei.name}(#{fenlei_zhichu}￥)", percent(fenlei_zhichu, quanbu_zhichu)]
    end
    fenleibi
  end

  def self.percent(zi, fu)
    (zi/fu*100).round(2)
  end

  def self.quanbu_zhichu(zhangmus)
    zhangmus.where(shouzhi: "zhichu").pluck(:fee).sum.round(2)
  end

  def self.pingjun_zhichu(zhangmus)
    zhichu_zhangmus = zhangmus.where(shouzhi: "zhichu")
    s = zhichu_zhangmus.group(:date).length
    s > 0 ? (quanbu_zhichu(zhichu_zhangmus) / s).round(2) : 0
  end

  def self.quanbu_shouru(zhangmus)
    zhangmus.where(shouzhi: "shouru").pluck(:fee).sum.round(2)
  end

  def self.pingjun_shouru(zhangmus)
    shouru_zhangmus = zhangmus.where(shouzhi: "shouru")
    s = shouru_zhangmus.group(:date).length
    s > 0 ? (quanbu_shouru(shouru_zhangmus) / s).round(2) : 0
  end

  def self.dangtian_zhichu
    zhangmus = search({created_at_gte: Date.current, created_at_lt: Date.current + 1})
    quanbu_zhichu(zhangmus)
  end

  def self.dangyue_zhichu
    zhangmus = search({created_at_gte: Date.current.at_beginning_of_month, created_at_lt: Date.current.at_end_of_month + 1})
    quanbu_zhichu(zhangmus)
  end

  def self.dangyue_pingjun_zhichu
    zhangmus = search({created_at_gte: Date.current.at_beginning_of_month, created_at_lt: Date.current.at_end_of_month + 1})
    pingjun_zhichu(zhangmus)
  end
end
