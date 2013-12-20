class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :telephone, :string
      t.column :email, :string
      t.timestamps
    end
  end
end
