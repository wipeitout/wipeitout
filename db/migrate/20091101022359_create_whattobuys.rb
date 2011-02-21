class CreateWhattobuys < ActiveRecord::Migration
  def self.up
    create_table :whattobuys do |t|
      t.string :name
      t.string :url
      t.string :image_path
      t.text :details
      t.timestamps
    end
  end

  def self.down
    drop_table :whattobuys
  end
end
