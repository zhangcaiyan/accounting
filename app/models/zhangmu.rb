# coding: utf-8

class Zhangmu < ActiveRecord::Base
  symbolize :shouzhi, :in => [:zhichu, :shouru], :methods => true, :scopes => true

  belongs_to :user
  belongs_to :fenlei
  belongs_to :zhangmu
  belongs_to :people

  validates :fee, :numericality => true, :presence => true
  validates :date, :presence => true
  
end
