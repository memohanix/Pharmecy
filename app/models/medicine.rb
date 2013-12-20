class Medicine < ActiveRecord::Base
  attr_accessible :name, :description,:packing_id
  belongs_to :packing
end
