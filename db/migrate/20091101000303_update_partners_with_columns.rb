class UpdatePartnersWithColumns < ActiveRecord::Migration
  def self.up
    add_column :partners, :url, :string, :null => false
    add_column :partners, :image_path, :string, :null => false
    add_column :partners, :details, :text, :null => false
  end

  def self.down
    remove_column :supporters, :url
    remove_column :supporters, :image_path
    remove_column :supporters, :details
  end
end
