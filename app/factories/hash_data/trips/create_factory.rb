module HashData
  module Trips
    class CreateFactory
      include Callee

      option :params

      def call
        {
          user_id: params[:user_id],
          start_at: params[:start_at],
          end_at: params[:end_at],
          title: params[:title],
          description: params[:description],
          location: params[:location],
          lng: params[:lng],
          lat: params[:lat]
        }
      end
    end
  end
end
