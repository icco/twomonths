class User < ActiveRecord::Base
  attr_accessible :email, :telephone, :username
  phony_normalize :telephone, :default_country_code => 'US'

  validates :username, :uniqueness => true, :presence => true, :format => { :with => /\A[0-9a-zA-Z]+\z/, :message => "Only numbers and letters allowed." }
  validates :email, :email => true, :allow_nil => true
  validates_plausible_phone :telephone

  has_many :goals
  has_many :updates

  def current_goal
    return self.goals.order("created_at DESC").first
  end

  def User.login username, password
    identity = Identity.authenticate(username, password)

    if identity
      user = User.find_or_create_by_username username
      p user.errors.messages if !user.valid?
      return user
    else
      return nil
    end
  end
end
