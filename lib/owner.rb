class Owner
  attr_accessor :name
  @@owners = []
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def self.all_owners
    @@owners.dup.freeze
  end
end
