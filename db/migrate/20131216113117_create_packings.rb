class CreatePackings < ActiveRecord::Migration
  def change
    create_table :packings do |t|
      t.column :name , :string      
      t.column :code , :string
      t.column :unit , :integer      
      t.timestamps
    end
  end
end
