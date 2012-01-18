# coding: utf-8

class Zhangmu < ActiveRecord::Base
  symbolize :shouzhi, :in => [:zhichu, :shouru], :methods => true, :scopes => true

  belongs_to :user
  belongs_to :fenlei
  belongs_to :zhangben
  belongs_to :people

  validates :fee, :numericality => true, :presence => true
  validates :date, :presence => true

  def self.quanbu_zhichu(zhangmus)
    zhangmus.where(:shouzhi => "zhichu").collect(&:fee).sum.round(2)
  end

  def self.pingjun_zhichu(zhangmus)
    zhichu_zhangmus = zhangmus.where(:shouzhi => "zhichu")
    s = zhichu_zhangmus.size
    s > 0 ? (quanbu_zhichu(zhichu_zhangmus) / s).round(2) : 0
  end

  def self.quanbu_shouru(zhangmus)
    zhangmus.where(:shouzhi => "shouru").collect(&:fee).sum.round(2)
  end

  def self.pingjun_shouru(zhangmus)
    shouru_zhangmus = zhangmus.where(:shouzhi => "shouru")
    s = shouru_zhangmus.size
    s > 0 ? (quanbu_shouru(shouru_zhangmus) / s).round(2) : 0
  end
end
