class AddQantasEmails < ActiveRecord::Migration
  def self.up
    Email.create :name => "qantas_supporter", :description => "email sent to supporters requesting there action to send letter to qantas"
    Email.create :name => "qantas_letter", :description => "email sent to qantas on supporters behalf"
  end

  def self.down
    Email.delete :name => "qantas_supporter"
    Email.delete :name => "qantas_letter"
  end
end
