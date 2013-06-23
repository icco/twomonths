require 'spec_helper'

describe Update do
  it "should create a new instance if a user has that phone number" do
    u = FactoryGirl.create(:user)
    u.telephone = "1234567890"
    u.save

    update = Update.new_from_sms "1234567890", "test"
    expect(update.valid?).to eq(true)
  end
end
