class AddColumnToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :address, :text
    add_column :users, :phone_number, :integer
    add_column :users, :birthday, :date
    add_column :users, :gender, :boolean
    add_column :users, :ym, :string
    add_column :users, :gtalk, :string
    add_column :users, :facebook, :string
    add_column :users, :blog, :string
  end

  def self.down
    remove_column :users, :address
    remove_column :users, :phone_number
    remove_column :users, :birthday
    remove_column :users, :gender
    remove_column :users, :ym
    remove_column :users, :gtalk
    remove_column :users, :facebook
    remove_column :users, :blog
  end
end
