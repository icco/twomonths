class User < ActiveRecord::Base
  attr_accessible :email, :telephone, :username
  validates :username, :presence => true, :format => { :with => /\A[0-9a-zA-Z]+\z/, :message => "Only numbers and letters allowed." }
  validates :email, :email => true

  def User.find_or_create_from_auth_hash hash
    p hash.extra.keys
    username = hash["info"]["username"]
    if !username.nil?
      return User.find_or_create_by_username username
    else
      return nil
    end
  end
end
