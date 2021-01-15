module Trips
  class CreateForm < ApplicationForm
    transform_keys(&:to_sym)

    attribute :user_id, Types::Coercible::String

    attribute :start_at, Types::Coercible::String
    attribute :end_at, Types::Coercible::String

    attribute :title, Types::Coercible::String
    attribute :description, Types::Coercible::String

    attribute :location, Types::Coercible::String
    attribute :lng, Types::Coercible::Decimal
    attribute :lat, Types::Coercible::Decimal
  end
end
