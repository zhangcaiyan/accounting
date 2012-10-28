# coding: utf-8

class Zhangben < ActiveRecord::Base
  belongs_to :user
  has_many :zhangmus, dependent: :nullify

  acts_as_list scope: :user

  validates :name, presence: true, uniqueness: {scope: :user_id}, length: {maximum: 20}
  validates :desc, length: {maximum: 1000}

end
