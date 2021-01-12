module Trips
  class CreateContract < ApplicationContract
    params do
      required(:email).filled(:string)
      required(:password).filled(:string)
      required(:password_confirmation).filled(:string)
    end
  end
end
