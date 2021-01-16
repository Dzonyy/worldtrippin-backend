FactoryBot.define do
  factory :user do
    email { "example@example.com" }
    password { 'Secret00!' }
    first_name { 'Example' }
    last_name { 'Example' }
  end
end
