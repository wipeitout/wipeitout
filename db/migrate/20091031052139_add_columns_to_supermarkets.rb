class AddColumnsToSupermarkets < ActiveRecord::Migration
  def self.up
    add_column :supermarkets, :image_path, :string, :null => false
    add_column :supermarkets, :email_to_person, :text, :null => false
    add_column :supermarkets, :email_to_address, :text, :null => false
  end

  def self.down
    remove_column :supermarkets, :image_path
    remove_column :supermarkets, :email_to_person
    remove_column :supermarkets, :email_to_address

  end
end
