module Api
  module V1
    class TripsController < ApplicationController
      include Dry::Monads[:result]

      def index
        @trips = Trip.all

        render json: @trips
      end

      def new
        @facade = Trips::CreateFacade.new
      end

      def create
        @facade = Trips::CreateFacade.new(params: trip_params)
        result  = @facade.operation.call

        case result
        when Success
          render json: { status: 402 }

        when Failure
          render json: { status: 200, errors: result.failure[:errors] }
        end
      end

      def update
        @facade = Trips::UpdateFacade.new(params: trip_params)
        result  = @facade.operation.call

        case result
        when Success
          render json: { status: 402 }

        when Failure
          render json: { status: 200, errors: result.failure[:errors] }
        end
      end

      private

      def trip_params
        params.require(:trip).permit(:id, :email, :password, :password_confirmation, :first_name, :last_name)
      end

      def find_trip
        Trip.find(params[:id])
      end
    end
  end
end
