module Trips
  class CreateOperation < ApplicationOperation
    option :form
    option :contract

    def call
      yield check_errors

      user = yield create_trip

      Success(user)
    end

    private

    def create_trip
      trip = TripFactory.call(params: trip_params)

      if trip.save
        Success(trip)
      else
        binding.pry
        Failure(trip: trip)
      end
    end

    def trip_params
      @trip_params ||= HashData::Trips::CreateFactory.call(params: form)
    end
  end
end
