class Dog
  attr_accessor :mood
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "dog"
    @mood = "nervous"
  end
end
