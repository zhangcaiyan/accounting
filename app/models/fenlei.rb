# coding: utf-8

class Fenlei < ActiveRecord::Base
  has_many :zhangmus, dependent: :nullify
  belongs_to :user

  acts_as_list scope: [:user_id, :shouzhi]
  validates :name, presence: true, uniqueness: {scope: :user_id}, length: {maximum: 20}
  validates :desc, length: {maximum: 1000}

  symbolize :shouzhi, in: [:zhichu, :shouru], methods: true, scopes: true
  default_value_for :shouzhi, "zhichu"
end
