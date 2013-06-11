# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "test@example.com"
    telephone "1234567890"
    username "MyString"
  end
end
