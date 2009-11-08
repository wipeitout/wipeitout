class CreateSupermarkets < ActiveRecord::Migration
  def self.up
    create_table :supermarkets do |t|
      t.text :name
      t.text :url
      t.timestamps
    end
  end

  def self.down
    drop_table :supermarkets
  end
end
