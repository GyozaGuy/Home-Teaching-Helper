class Companionship < ActiveRecord::Base
  belongs_to :assignment
  has_many :members
end
