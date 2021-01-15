module Trips
  class CreateFacade
    extend Dry::Initializer

    option :params, optional: true, default: -> { {} }

    def operation
      @operation ||= Trips::CreateOperation.new(
        user: user,
        trip: trip,
        form: form,
        contract: contract
      )
    end

    def form
      @form ||= Trips::CreateForm.new(form_data)
    end

    def contract
      @contract ||= Trips::CreateContract.new
    end

    def trip
      @trip ||= Trip.new
    end

    def user
      @user ||= User.find(params[:user_id])
    end

    private

    def form_data
      @form_data = HashData::Trips::CreateFactory.call(params: params)
    end
  end
end
