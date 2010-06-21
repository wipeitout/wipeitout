class Email < ActiveRecord::Base
  has_many :supporter_emails
  has_many :supporters, :through => :supporter_emails 
end
