class CreateCommitmentsJoin < ActiveRecord::Migration
  def self.up
    create_table :commitments, :id => false do |t|
      t.integer :supporter_id, :null => false
      t.integer :pledge_id, :null => false
      t.timestamp
    end
  end

  def self.down
    drop_table :commitments
  end
end
