module Api
  module V1
    class TripsController < ApplicationController
      include Dry::Monads[:result]
    end
  end
end
