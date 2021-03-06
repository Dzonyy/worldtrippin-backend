module Users
  class CreateContract < ApplicationContract
    params do
      required(:email).filled(:string)
      required(:password).filled(:string)
      required(:password_confirmation).filled(:string)
    end

    rule(:email) do
      unless /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.match?(values[:email])
        key.failure('has invalid format')
      end

      key.failure('Email is already taken') if User.find_by(email: values[:email]).present?
    end
  end
end
