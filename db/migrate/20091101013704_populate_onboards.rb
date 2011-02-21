class PopulateOnboards < ActiveRecord::Migration
  def self.up
    Onboard.delete_all

    Onboard.create(:name => 'Beauchamp Hotel', :image_path => '/images/onboard/beauchamp.png',
                       :url => 'http://www.thebeauchamp.com.au/Home.html')
    Onboard.create(:name => 'Greenpeace', :image_path => '/images/onboard/greenpeace.png',
                       :url => 'http://www.greenpeace.com.au')
    Onboard.create(:name => 'Shiftlock', :image_path => '/images/onboard/shiftlock.png',
                       :url => 'http://www.shiftlock.com.au')
  end

  def self.down
    Onboard.delete_all
  end
end
