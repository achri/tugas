class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :location
      t.integer :weight
      t.integer :user_id
      t.integer :category_id
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
