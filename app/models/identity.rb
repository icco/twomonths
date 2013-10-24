class Identity < OmniAuth::Identity::Models::ActiveRecord
  validates_uniqueness_of :username
  auth_key :username
end
