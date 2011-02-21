class SupporterEmail < ActiveRecord::Base
  belongs_to :emails
  belongs_to :supporters
  
end
