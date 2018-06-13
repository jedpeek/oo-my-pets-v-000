class Owner
  attr_accessor :name
  @@owners = []
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end
end
