module Users
  class CreateOrUpdateFacade
    extend Dry::Initializer

    option :params, optional: true, default: -> { {} }

    def operation
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
      @form_data ||= if params[:users].present?
        HashData::Users::CreateOrUpdateFactory.call(form_data: permitted_params)
      else
        HashData::Users::CreateOrUpdateFactory.call(form_data: user.to_h)
      end
    end

    def permitted_params
      params.fetch(:user, {}).permit!.to_h.deep_symbolize_keys
    end
  end
end
