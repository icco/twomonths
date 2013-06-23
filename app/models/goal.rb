class Goal < ActiveRecord::Base
  attr_accessible :description, :metrics

  belongs_to :user
  has_many :updates

  validates :description, :presence => true
end
