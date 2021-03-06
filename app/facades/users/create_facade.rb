module Users
  class CreateFacade
    extend Dry::Initializer

    option :params, optional: true, default: -> { {} }

    def operation
      @operation ||= Users::CreateOperation.new(
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
      @user ||= User.new
    end

    private

    def form_data
      @form_data = HashData::Users::CreateFactory.call(params: params)
    end
  end
end
