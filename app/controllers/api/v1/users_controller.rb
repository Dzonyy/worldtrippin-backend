module Api
  module V1
    class UsersController < ApplicationController
      include Dry::Monads[:result]

      def new
        @facade = Users::CreateOrUpdateFacade.new
      end

      def edit
        @facade = Users::CreateOrUpdateFacade.new(params: params)
      end

      def create
        @facade = Users::CreateOrUpdateFacade.new(params: params)
        result  = @facade.operation.call

        case result
        when Success
          status 200

        when Failure
          status 422
        end
      end

      private

      def user_params
        params.fetch(:user, {}).permit(:email, :password_digest, :first_name, :last_name)
      end

      def find_user
        User.find(params[:id])
      end
    end
  end
end
