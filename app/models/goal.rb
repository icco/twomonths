class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :updates

  validates :description, :presence => true
end
