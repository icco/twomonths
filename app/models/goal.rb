class Goal < ActiveRecord::Base
  belongs_to :user
  validates :description, :presence => true
  attr_accessible :description, :metrics
end
