module Trips
  class CreateContract < ApplicationContract
    params do
      required(:user_id).filled(:integer)
      required(:start_at).filled(:string)
      required(:end_at).filled(:string)
      required(:title).filled(:string)
      required(:description).filled(:string)
    end
  end
end
