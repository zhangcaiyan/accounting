# coding: utf-8

class Fenlei < ActiveRecord::Base
  belongs_to :zhangben
  has_many :zhangmus, dependent: :nullify

  validates :name, uniqueness: {scope: :zhangben_id}, length: {in: 1..20}
  validates :desc, length: {maximum: 500}
end
