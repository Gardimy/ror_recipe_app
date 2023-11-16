FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { 'password5895' }
    confirmed_at { Time.now }
  end
end
