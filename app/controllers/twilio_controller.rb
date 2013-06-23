class TwilioController < ActionController::Base
  def voice
    # TODO: Save somewhere
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Hi. Please record your update.', :voice => 'woman'
      r.Record
    end

    render :text => response.text, :content_type => 'text/xml'
  end

  def txt
    message_body = params["Body"]
    from_number = params["From"]

    Update.new_from_sms from_number, message_body
  end
end
