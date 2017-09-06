class TestUser
  def initialize(name)
    @name = name
  end

  def create_user
    User.new(name: @name)
  end
end
