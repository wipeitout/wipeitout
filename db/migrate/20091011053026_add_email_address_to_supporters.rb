class AddEmailAddressToSupporters < ActiveRecord::Migration
  def self.up
    add_column :supporters, :email, :string, :default => 'fake@wipeitout.com.au', :null => false
  end

  def self.down
    remove_column :supporters, :email
  end
end
