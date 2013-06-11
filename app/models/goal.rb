class Goal < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :metrics
end
