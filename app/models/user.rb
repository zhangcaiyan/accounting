# coding: utf-8

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :zhangbens
  has_many :fenleis, :through => :zhangbens
  has_many :peoples
  has_many :zhangmus

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :email, :username, :password, :password_confirmation, :remember_me

  attr_accessor :login

  after_create :add_peoples, :add_zhangbens_and_fenleis
  
  validates :username, :length => {:in => 1..20}, :uniqueness => true
  validates :password, :length => {:in => 1..20}
  validates :email, :format => {
    :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
  }, :uniqueness => true
  


  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.strip.downcase }]).first
  end


  private 

  def add_peoples
    peoples.create(:name => username)
  end

  def add_zhangbens_and_fenleis
    zhangbens.create(:name => '日常支出', 
                     :fenleis_attributes => [
                       {:name => "餐饮"},
                       {:name => "房租"}, 
                       {:name => "交通"}, 
                       {:name => "其他"}]
                    )
    zhangbens.create(:name => '借入借出',
                     :fenleis_attributes => [
                       {:name => "借出"},
                       {:name => "借出"}]
                    )
    zhangbens.create(:name => '其他', 
                     :fenleis_attributes => [
                       {:name => "餐饮"},
                       {:name => "房租"}, 
                       {:name => "交通"}, 
                       {:name => "其他"}]
                    )
  end

end
