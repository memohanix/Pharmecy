class Purchase < ActiveRecord::Base
  attr_accessible :medicine_id, :batch, :purchase_date, :user_id,:quantity, :bill_no, :distributor_id
  belongs_to :medicine
end
