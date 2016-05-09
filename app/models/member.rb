class Member < ActiveRecord::Base
  belongs_to :district
  belongs_to :assignment
  belongs_to :companionship
end
