class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.column :name , :string
      t.column :description , :text
      t.column :packing_id , :integer
      t.column :manufacturer , :string
      t.timestamps
    end
  end
end
