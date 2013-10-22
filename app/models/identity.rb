class Identity < OmniAuth::Identity::Models::ActiveRecord
  validates_uniqueness_of :username
  auth_key :username
  has_secure_password

  def self.locate(key)
    key = { :username => key } if !key.is_a? Hash
    return where(key).first
  end
end
