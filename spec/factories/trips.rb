# == Schema Information
#
# Table name: trips
#
#  id          :bigint           not null, primary key
#  description :text
#  end_at      :datetime
#  lat         :decimal(, )
#  lng         :decimal(, )
#  location    :string
#  start_at    :datetime
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_trips_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :trip do
    title { "MyString" }
    description { "MyText" }
    start_at { "2021-01-10 12:18:47" }
    end_at { "2021-01-10 12:18:47" }
    user { nil }
  end
end
