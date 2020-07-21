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

#Follower#cults
#returns an Array of this follower's cults
def cults
a = BloodOath.all.select{|folooo| folooo.follower == self}
a.map{|cul|cul.cult}
end

#Follower#join_cult
#takes in an argument of a Cult instance and 
#adds this follower to the cult's list of followers
def join_cult(cult)
   BloodOath.new(cult,self)
end

#Follower.of_a_certain_age
#takes an Integer argument that is an age and 
#returns an Array of followers who are the given age or older
def self.all_certain_age(integer)
  Follower.all.select{|ag|ag.age >= integer}
end


end


binding.pry