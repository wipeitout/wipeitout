class CreatePledgeTypes < ActiveRecord::Migration
  def self.up
    Pledge.delete_all

    Pledge.create(:name => 'family_friend',
                  :description => 'Tell you family and friends about Wipe It Out')

    Pledge.create(:name => 'recycled_only',
                  :description => 'Only buy recycled toliet paper from now on')

    Pledge.create(:name => 'facts_poster',
                  :description => 'Put up a poster at work or school alerting everyone to the facts about toilet paper')

    Pledge.create(:name => 'help_wipeitout',
                  :description => 'Volunteer time to help Wipe It Out achieve its goals')
  end

  def self.down
    Pledge.delete_all
  end
end
