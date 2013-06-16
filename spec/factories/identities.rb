# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :identity do
    username "MyString"

    sequence :password do |n|
      "MyPassword#{n}"
    end
  end
end
