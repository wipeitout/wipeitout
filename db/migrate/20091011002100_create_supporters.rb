class CreateSupporters < ActiveRecord::Migration
  def self.up
    create_table :supporters do |t|
      t.string :name
      t.integer :postcode
      t.boolean :accept_more_info
      t.timestamps
    end
  end

  def self.down
    drop_table :supporters
  end
end
