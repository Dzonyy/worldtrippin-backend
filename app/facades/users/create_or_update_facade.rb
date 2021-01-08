module Users
  class CreateOrUpdateFacade
    extend Dry::Initializer

    option :params, optional: true, default: -> { {} }

    def operation
      binding.pry
      @operation ||= Users::CreateOrUpdateOperation.new(
        user: user,
        form: form,
        contract: contract
      )
    end

    def form
      @form ||= Users::CreateOrUpdateForm.new(form_data)
    end

    def contract
      @contract ||= Users::CreateOrUpdateContract.new
    end

    def user
      @user ||= User.find_by(id: params[:id]) || User.new
    end

    private

    def form_data
      @form_data = HashData::Users::CreateOrUpdateFactory.call(params: params)
    end
  end
end
