module Trips
  class CreateForm < ApplicationForm
    transform_keys(&:to_sym)

    attribute :user_id, Types::Coercible::String

    attribute :start_time, Types::Time.optional
    attribute :end_time, Types::Time.optional

    attribute :title, Types::Coercible::String
    attribute :description, Types::Coercible::String
  end
end
