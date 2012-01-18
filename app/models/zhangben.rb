# coding: utf-8

class Zhangben < ActiveRecord::Base
  belongs_to :user
  has_many :fenleis, :dependent => :destroy
  has_many :zhangmus, :dependent => :nullify

  validates :name, :uniqueness => {:scope => :user_id}, :length => {:in => 1..20}
  validates :desc, :length => {:maximum => 500}

  accepts_nested_attributes_for :fenleis
end
