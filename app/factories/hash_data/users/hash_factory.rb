module HashData
  module Users
    class HashFactory
      include Callee

      option :params

      def call
        {
          email: params[:email],
          password: params[:password],
          password_confirmation: params[:password_confirmation],
          first_name: params[:first_name],
          last_name: params[:last_name]
        }
      end
    end
  end
end
