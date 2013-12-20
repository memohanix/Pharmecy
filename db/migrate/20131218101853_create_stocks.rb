class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.column :medicine_id , :integer
      t.column :batch , :string
      t.column :quantity , :integer
      t.column :mrp , :decimal,:precision=>8,:scale=>2
      t.column :expdate, :date
      t.timestamps
    end
  end
end                               