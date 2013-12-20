class Packing < ActiveRecord::Base
  attr_accessible :name, :code
  has_many :medicine , dependent: :destroy
  has_many :purchase , dependent: :destroy
  has_many :stock , dependent: :destroy
end
