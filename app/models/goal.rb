class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :updates

  validates :description, :presence => true
  after_initialize :set_dates

  def set_dates
    self.start ||= Time.now
    self.end ||= Chronic.parse('two months from now')
    self.save if self.changed?
  end

  def new_update
    u = Update.new
    u.goal = self
    u.user = self.user

    return u
  end
end
