# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :update do
    goal_id 1
    user_id 1
    from "MyString"
    content "MyText"
  end
end
