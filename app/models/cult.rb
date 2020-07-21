class Cult
 
  attr_accessor :name, :location, :founding_year, :slogan
  @@all = [ ]
  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end
#  takes in an argument of a Follower instance and 
#adds them to this cult's list of followers
  def recruit_follower(follower)
  
    BloodOath.new(self, follower)
  end
  #Cult#cult_population
#returns an Integer that is the number of followers in this cult

  def cult_population
    Cult.all.count
  end
  #Cult.find_by_name
#takes a String argument that is a name and returns 
#a Cult instance whose name matches that argument
  def find_by_name(name)

   Cult.all.select {|cult_name| cult_name.name == name}

  end

 # Cult.find_by_location
#takes a String argument that is a location and 
#returns an Array of cults that are in that location
def find_by_location(location)
  Cult.all.select {|cult_name| cult_name.location == location}
end

#Cult.find_by_founding_year
#takes an Integer argument that is a year and 
#returns all of the cults founded in that year
def find_by_founding_year(year)
Cult.all.select {|cult_name| cult_name.founding_year == year}
end

#Cult#average_age
#returns a Float that is the average age of this cult's followers
def average_age
  a = BloodOath.all.select{|follo|follo.cult == self}
  age = a.map{|ag|ag.follower.age}
  sum = 0
  age.each { |a| sum+=a }
  sum.to_f/age.size.to_f
end

#Cult#my_followers_mottos
#prints out all of the mottos for this cult's followers
def my_folllowers_mottos
  a = BloodOath.all.select{|follo|follo.cult == self}
  a.map{|ag|ag.follower.life_motto}
end

#Cult.least_popular
#returns the Cult instance who has the least number of followers :(
def self.least_popular
binding.pry

    @@all.min_by {|cult| cult.cult_population }
    end

end
binding.pry