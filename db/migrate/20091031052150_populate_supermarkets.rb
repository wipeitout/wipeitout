class PopulateSupermarkets < ActiveRecord::Migration
  def self.up
    Supermarket.delete_all

    Supermarket.create(:name => 'Woolworths', :image_path => '/image/supermarkets/woolworths_logo.png',
                       :email_to_person => 'Procurement Manager', :email_to_address => 'blah@woolworths.com.au')
    Supermarket.create(:name => 'Coles', :image_path => '/image/supermarkets/coles_logo.png',
                       :email_to_person => 'Procurement Manager', :email_to_address => 'blah@coles.com.au')
    Supermarket.create(:name => 'IGA', :image_path => '/image/supermarkets/iga_logo.png',
                       :email_to_person => 'Procurement Manager', :email_to_address => 'blah@iga.com.au')
    Supermarket.create(:name => 'ALDI', :image_path => '/image/supermarkets/aldi_logo.png',
                       :email_to_person => 'Procurement Manager', :email_to_address => 'blah@aldi.com.au')
  end

  def self.down
    Supermarket.delete_all
  end
end
