class Owner
  attr_accessor :name

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  # code goes here
end