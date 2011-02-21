class CreatePledges < ActiveRecord::Migration
  def self.up
    create_table :pledges do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :pledges
  end
end
