class AddCommitmentDates < ActiveRecord::Migration
  def self.up
    change_table :commitments do |t|
      t.date :commit_date
      t.date :completed_date
    end
    Commitment.update_all( "commit_date = #{Date.today}", "completed_date = #{Date.today}" )
  end

  def self.down
    remove_columns :commitments, :commit_date, :completed_date
  end
end
