class CreatePackings < ActiveRecord::Migration
  def change
    create_table :packings do |t|
      t.column :name , :string      
      t.column :code , :string      
      t.timestamps
    end
  end
end
