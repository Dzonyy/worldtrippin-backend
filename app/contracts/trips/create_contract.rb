module Trips
  class CreateContract < ApplicationContract
    params do
      required(:user_id).filled(:integer)
      required(:start_time).filled(:string)
      required(:end_time).filled(:string)
      required(:title).filled(:string)
      required(:description).filled(:string)
    end
  end
end
