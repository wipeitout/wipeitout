class PopulateSupportersUnsubscribed < ActiveRecord::Migration
  def self.up
    Supporter.update_all(:unsubscribed => 0)
  end

  def self.down
#    will never need to be reversed out
  end
end
