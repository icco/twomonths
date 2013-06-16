require 'spec_helper'

describe Goal do
  before(:each) do
    @u = FactoryGirl.create(:user)
  end

  it "saves when there is a description" do
    goal = FactoryGirl.build(:goal)
    expect(goal.save).to eq(true)
  end

  it "doesn't save when there isn't a description" do
    goal = FactoryGirl.build(:goal)
    goal.description = ''
    expect(goal.save).to eq(false)
  end
end
