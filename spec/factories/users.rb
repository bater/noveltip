FactoryGirl.define do
  factory :user do
    name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password { Faker::Name.first_name }

  end
end
