class Owner
  attr_accessor :name

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end
end
