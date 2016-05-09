class District < ActiveRecord::Base
  has_one :member
  has_many :assignments
end
