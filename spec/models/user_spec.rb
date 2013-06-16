require 'spec_helper'

describe User do
  it "should create a new instance of a user given a valid login hash" do
    i = FactoryGirl.create(:identity)
    user = User.login(i.username, i.password)

    expect(user.nil?).to eq(false)
    expect(user.username).to eq(i.username)
    expect(user.valid?).to eq(true)
    expect(user.new_record?).to eq(false)
  end
end
