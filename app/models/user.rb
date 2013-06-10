class User < ActiveRecord::Base
  attr_accessible :email, :telephone, :username
  validates :username, :presence => true, :format => { :with => /\A[0-9a-zA-Z]+\z/, :message => "Only numbers and letters allowed." }

  def User.find_or_create_from_auth_hash hash
    p hash.info["username"]
    return User.find_or_create_by_username hash.info["username"] 
  end
end
