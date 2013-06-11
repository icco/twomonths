class User < ActiveRecord::Base
  attr_accessible :email, :telephone, :username
  validates :username, :uniqueness => true, :presence => true, :format => { :with => /\A[0-9a-zA-Z]+\z/, :message => "Only numbers and letters allowed." }
  validates :email, :email => true, :unless => "email.nil?"

  def User.login username, password
    identity = Identity.authenticate(username, password)
    if !identity.nil?
      user = User.find_or_create_by_username username
      p user.errors.messages if !user.valid?
      return user
    else
      return nil
    end
  end
end
