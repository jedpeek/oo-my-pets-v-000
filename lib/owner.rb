class Owner
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @all.length
  end
end
