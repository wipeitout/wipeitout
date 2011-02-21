class PopulateWhattobuy < ActiveRecord::Migration
  def self.up
    Whattobuy.delete_all

    Whattobuy.create(:name => 'Choice', :image_path => '/images/whattobuy/choice.png',
                     :url => 'http://www.choice.com.au', :details => 'Choice magazine have done the leg work on researching on recycled toilet paper for you.')
    Whattobuy.create(:name => 'Someothersite', :image_path => '/images/whattobuy/questionmark.png',
                     :url => 'http://www.nolink.com.au', :details => 'This other company has also made it easier for you to wipe away any guilt from your conscience.')
    Whattobuy.create(:name => 'Planetark', :image_path => '/images/whattobuy/planetark.jpg',
                     :url => 'http://www.nolink.com.au', :details => 'Planet Ark designs its campaigns so you can make a difference. Whether through recycling more, planting trees for treeday or changing to energy efficient lightglobes, small changes to individual behaviour add up to big savings for the environment.')
  end

  def self.down
    Whattobuy.delete_all

  end
end
