module Users
  class CreateOperation < ApplicationOperation
    option :form
    option :contract, default: -> { Users::CreateOrUpdateContract.new }

    def call
      user = yield create_user

      Success(user)
    end

    private

    def create_user
      user = UserFactory.call(params: user_params)

      if user.save
        Success(user)
      else
        Failure(user: user)
      end
    end

    def user_params
      @user_params ||= HashData::Users::CreateFactory.call(params: form_data)
    end
  end
end
