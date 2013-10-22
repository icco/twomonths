class Identity < OmniAuth::Identity::Models::ActiveRecord
  validates_uniqueness_of :username
  auth_key :username

  def self.locate(key)
    where(key).first
  end
end
