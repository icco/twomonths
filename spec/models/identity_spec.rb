require 'spec_helper'

describe Identity do
  it "should compare to plain text password" do
    i = FactoryGirl.create(:identity)
    expect(i.password_digest).to eq(i.password)
  end
end
