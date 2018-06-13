require 'pry'
class Owner
  attr_accessor :name
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish
    Fish.new("Bubbles")
    binding.pry
  end

end
