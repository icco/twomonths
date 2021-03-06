class Update < ActiveRecord::Base
  belongs_to :goal
  belongs_to :user

  def self.new_from_sms number, message
    update = Update.new
    update.content = message
    update.from = "telephone:#{number}"

    user = User.find_by_telephone PhonyRails.normalize_number(number, :default_country_code => 'US')

    if user
      update.user = user
      update.goal = user.current_goal
    end

    if update.save
      update
    else
      nil
    end
  end
end
