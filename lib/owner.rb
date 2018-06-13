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

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].for_each{|dog| dog.mood = "happy"}
    end
  end

  def list_pets
    fishes = @pets[:fishes].length
    dogs = @pets[:dogs].length
    cats = @pets[:cats].length
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end


end
