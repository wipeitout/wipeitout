class Supporter < ActiveRecord::Base
  has_many :commitments
  has_many :pledges, :through => :commitments

  has_many :supporter_emails
  has_many :emails, :through => :supporter_emails

  validates_uniqueness_of :email
  validates_presence_of :name, :postcode, :email

end
