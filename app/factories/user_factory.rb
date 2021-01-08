class UserFactory
  include Callee

  option :params

  def call
    User.new(params)
  end
end
