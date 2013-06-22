class Update < ActiveRecord::Base
  attr_accessible :content, :from
  belongs_to :goal
  belongs_to :user

  def self.new_from_sms number, message
    update = Update.new
    update.content = message
    update.from = number

    user = User.find_by_telephone number

    if user
      update.user = user
      update.goal = user.current_goal
    end

    update.save
  end
end
