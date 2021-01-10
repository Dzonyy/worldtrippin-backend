FactoryBot.define do
  factory :trip do
    title { "MyString" }
    description { "MyText" }
    start_at { "2021-01-10 12:18:47" }
    end_at { "2021-01-10 12:18:47" }
    user { nil }
  end
end
