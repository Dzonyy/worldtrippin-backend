module Users
  class CreateOrUpdateContract < ApplicationContract
    params do
      required(:email).filled(:string)
      required(:password_digest).filled(:string)
      optional(:is_admin)
      optional(:first_name)
      optional(:last_name)
    end
  end
end
