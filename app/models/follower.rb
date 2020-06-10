class Follower
  attr_accessor :name, :life_motto, :age
  @@all = [ ]
  def initialize(name, life_motto, age)
    @name = name
    @life_motto = life_motto
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end
end