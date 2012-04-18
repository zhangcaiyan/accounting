# coding: utf-8

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :zhangbens
  has_many :fenleis
  has_many :zhichu_fenleis, class_name: "Fenlei", conditions: {shouzhi: :zhichu}
  has_many :shouru_fenleis, class_name: "Fenlei", conditions: {shouzhi: :shouru}
  has_many :peoples
  has_many :zhangmus

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :email, :username, :password, :password_confirmation, :remember_me

  attr_accessor :login

  after_create :add_people_name, :add_zhangbens_and_fenleis
  after_update :update_people_name
  
  validates :username, length: {in: 1..20}, uniqueness: true
  validates :password, presence: true, confirmation: true, on: "create"
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }, uniqueness: true
  
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", { value: login.strip.downcase }]).first
  end


  private 

  def add_people_name
    peoples.create(name: username)
  end

  def update_people_name
    if username_changed?
      people = peoples.find_by_name(username_change.first)
      people.update_attributes(name: username_change.last )
    end
  end

  def add_zhangbens_and_fenleis
    zhangbens.create(Setting::App.zhangbens.values)
    fenleis.create(Setting::App.fenleis.values)
  end

end
