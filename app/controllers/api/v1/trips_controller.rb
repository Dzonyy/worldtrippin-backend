module Api
  module V1
    class TripsController < ApplicationController
      include Dry::Monads[:result]

      def new
        @facade = Trips::CreateFacade.new
      end
    end
  end
end
