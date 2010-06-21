class Commitment < ActiveRecord::Base
  belongs_to :supporter
  belongs_to :pledge

end
