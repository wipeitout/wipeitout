class AddNameToSupermarkets < ActiveRecord::Migration
  def self.up
    add_column :supermarkets, :name, :string, :null => false
  end

  def self.down
    remove_column :supermarkets, :name
  end
end
