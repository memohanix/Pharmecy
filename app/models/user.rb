class User < ActiveRecord::Base
  attr_accessible :name, :username, :email, :password
  validates :name, presence: true
  validates :username, presence: true
  validates :email, presence: true,uniqueness: true
end
