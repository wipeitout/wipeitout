class CreateSupporterEmails < ActiveRecord::Migration
  def self.up
    create_table :supporter_emails, :id => false do |t|
      t.integer :supporter_id, :null => false
      t.integer :email_id, :null => false
      t.date :commit_date, :null => false
      t.date :completed_date
    end
  end

  def self.down
    drop_table :supporter_email
  end
end
