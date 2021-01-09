module Users
  class UpdateOperation < ApplicationOperation
    option :user
    option :form
    option :contract, default: -> { Users::CreateContract.new }

    def call
      user = yield update_user

      Success(user)
    end

    private

    def update_user
      if user.update(user_params)
        Success(user)
      else
        Failure(user)
      end
    end

    def user_params
      @user_params ||= HashData::Users::CreateFactory.call(params: form)
    end
  end
end
