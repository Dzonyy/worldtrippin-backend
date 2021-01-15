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
require 'rails_helper'

RSpec.describe Trip, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
