# coding: utf-8

class People < ActiveRecord::Base
  belongs_to :user
  has_many :zhangmus, dependent: :nullify

  validates :name, uniqueness: {scope: :user_id}, length: {in: 1..20}
  validates :desc, length: {maximum: 1000}
end
