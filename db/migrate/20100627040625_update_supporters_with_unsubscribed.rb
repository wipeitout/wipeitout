class UpdateSupportersWithUnsubscribed < ActiveRecord::Migration
  def self.up
    add_column :supporters, :unsubscribed, :boolean, :default => 0
  end

  def self.down
    remove_column :supporters, :unsubscribed
  end
end
