class TripFactory
  include Callee

  option :params

  def call
    Trip.new(params)
  end
end
