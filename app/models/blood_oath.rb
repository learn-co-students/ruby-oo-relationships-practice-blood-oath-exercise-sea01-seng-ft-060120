class BloodOath
  attr_accessor :cult, :follower
  @@all = [ ]
  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @@all << self
  end

  def self.all
    @@all
  end
#BloodOath#initiation_date
#returns a String that is the initiation date of this blood oath 
#in the format YYYY-MM-DD.
def initiation_date
    Time.now
end  
end
binding.pry
