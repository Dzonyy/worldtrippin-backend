module Trips
  class CreateForm < ApplicationForm
    transform_keys(&:to_sym)
  end
end
