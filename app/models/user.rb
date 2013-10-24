class User < ActiveRecord::Base
  phony_normalize :telephone, :default_country_code => 'US'

  validates :username, :uniqueness => true, :presence => true, :format => { :with => /\A[0-9a-zA-Z]+\z/, :message => "Only numbers and letters allowed." }
  validates :email, :email => true, :allow_nil => true
  validates_plausible_phone :telephone

  has_many :goals
  has_many :updates
  has_many :pings

  def current_goal
    return self.goals.order("created_at DESC").first
  end

  def User.login username, password
    identity = Identity.authenticate({:username => username}, password)

    if identity.nil?
      raise "Could not find identity: #{username}"
    end

    user = User.where(:username => username).first

    #p user, identity
    if user.nil? or !user
      user = User.create(:username => username)
      user.save
    end

    return user
  end
end
