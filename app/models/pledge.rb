class Pledge < ActiveRecord::Base
  has_many :commitments
  has_many :supporters, :through => :commitments
end

