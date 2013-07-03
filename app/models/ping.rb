class Ping < ActiveRecord::Base
  belongs_to :user

  METHOD = { :email => 0, :txt => 1, :call => 2 }
   
  def method
    METHOD.key(read_attribute(:method))
  end

  def method=(s)
    write_attribute(:method, METHOD[s])
  end

  def deliver
    case self.method
    when :txt
      client = Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_TOKEN']
      client.account.sms.messages.create(
        :to => self.user.telephone,
        :body => "Hey there! It's been a while since you updated your goal. How's it going?",
      )
    else
      raise NotImplementedError
    end
  end
  handle_asynchronously :deliver
end
