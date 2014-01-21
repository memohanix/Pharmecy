class Medicine < ActiveRecord::Base
  attr_accessible :name, :description,:packing_id,:manufacturer
  belongs_to :packing
  validates :name ,:presence=>true, :uniqueness=>true, format: { with: /\A[a-z A-Z0-9]+\z/,message: "only allows alphanumeric characters" },:length=>{:minimum=>3,:maximum=>100}
  validates :description ,:allow_blank => true,format: { with: /\A[a-z A-Z0-9]+\z/,message: "only allows alphanumeric characters" }
  validates :manufacturer ,:allow_blank => true,format: { with: /\A[a-z A-Z0-9]+\z/,message: "only allows alphanumeric characters" }
end
