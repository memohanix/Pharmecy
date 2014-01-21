class Packing < ActiveRecord::Base
  attr_accessible :name, :code, :unit
  validates :name ,:presence=>true, :uniqueness=>true, format: { with: /\A[a-z A-Z0-9]+\z/,message: "only allows alphanumeric characters" },:length=>{:minimum=>3,:maximum=>10}
  validates :code ,format: { with: /\A[a-z A-Z0-9]+\z/,message: "only allows alphanumeric characters" }
  has_many :medicine , dependent: :destroy  
end