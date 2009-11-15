class Supporter < ActiveRecord::Base
  has_many :commitments
  has_many :pledges, :through => :commitments

  validates_uniqueness_of :email
  validates_presence_of :name, :postcode, :email

end
