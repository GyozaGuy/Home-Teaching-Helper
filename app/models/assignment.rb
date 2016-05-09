class Assignment < ActiveRecord::Base
  belongs_to :district
  has_one :companionship
  has_many :members
end
