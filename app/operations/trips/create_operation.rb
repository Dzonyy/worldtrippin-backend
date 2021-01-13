module Trips
  class CreateOperation < ApplicationOperation
    option :form
    option :contract, default: -> { Trips::CreateOrUpdateContract.new }

    def call
      user = yield create_user

      Success(user)
    end

    private

    def create_trip
      trip = TripFactory.call(params: trip_params)

      if trip.save
        Success(trip)
      else
        Failure(trip: trip)
      end
    end

    def trip_params
      @trip_params ||= HashData::Trips::CreateFactory.call(params: form)
    end
  end
end
