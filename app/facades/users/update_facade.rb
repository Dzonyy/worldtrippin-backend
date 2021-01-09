module Users
  class UpdateFacade
    extend Dry::Initializer

    option :params, optional: true, default: -> { {} }

    def operation
      @operation ||= Users::UpdateOperation.new(
        user: user,
        form: form,
        contract: contract
      )
    end

    def form
      @form ||= Users::CreateForm.new(form_data)
    end

    def contract
      @contract ||= Users::CreateContract.new
    end

    def user
      @user ||= User.find_by(id: params[:id])
    end

    private

    def form_data
      @form_data = HashData::Users::CreateFactory.call(params: params)
    end
  end
end
