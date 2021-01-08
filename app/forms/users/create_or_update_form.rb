module Users
  class CreateOrUpdateForm < ApplicationForm
    transform_keys(&:to_sym)

    attribute :email, Types::Coercible::String
    attribute :password, Types::Coercible::String
    attribute :password_digest, Types::Coercible::String
    attribute :is_admin, Types::Nominal::Bool
    attribute :first_name, Types::Coercible::String
    attribute :last_name, Types::Coercible::String
  end
end
