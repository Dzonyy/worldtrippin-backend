module Users
  class CreateOrUpdateOperation < ApplicationOperation
    option :user
    option :form
    option :contract, default: -> { Users::CreateOrUpdateContract.new }

    def call
      user = yield create_or_update_user

      Success(user)
    end

    private

    def create_or_update_user
      if user.persisted?
        Users::UpdateOperation.call(user: user, form: form)
      else
        Users::CreateOperation.call(form: form)
      end
    end

    def user_params
      @user_params ||= HashData::Users::CreateOrUpdateFactory.call(form_data: form_data)
    end
  end
end
