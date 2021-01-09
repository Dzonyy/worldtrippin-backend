module Api
  module V1
    class UsersController < ApplicationController
      include Dry::Monads[:result]

      def new
        @facade = Users::CreateFacade.new
      end

      def edit
        @facade = Users::CreateOrUpdateFacade.new(params: user_params)
      end

      def create
        @facade = Users::CreateFacade.new(params: user_params)
        result  = @facade.operation.call

        case result
        when Success
          render json: { status: 402 }

        when Failure
          render json: { status: 200 }
        end
      end

      def update
        @facade = Users::CreateOrUpdateFacade.new(params: user_params)
        result  = @facade.operation.call

        case result
        when Success
          render json: { status: 402  }

        when Failure
          render json: { status: 200 }
        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
      end

      def find_user
        User.find(params[:id])
      end
    end
  end
end
