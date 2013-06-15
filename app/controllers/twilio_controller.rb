class TwilioController < ApplicationController
  def voice
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Hi. Please record your update.', :voice => 'woman'
      r.Record
    end

    render :text => response.text, :content_type => 'text/xml'
  end

  def txt
  end
end
