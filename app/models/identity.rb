class Identity < OmniAuth::Identity::Models::ActiveRecord
  validates_uniqueness_of :username
end
