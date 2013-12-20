class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.column :medicine_id, :integer
      t.column :batch, :string
      t.column :bill_no, :string
      t.column :quantity, :integer
      t.column :purchage_rate, :decimal, :precision=>8, :scale=>2
      t.column :user_id, :integer
      t.column :purchage_date, :date
      t.column :distributor_id, :integer      
      t.timestamps
    end
  end
end
