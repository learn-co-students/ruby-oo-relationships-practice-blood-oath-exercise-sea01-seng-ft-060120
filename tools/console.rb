require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

soundarya = Follower.new("Soundarya", "YOLO", 28)
follower2 = Follower.new("Follower2", "What is life though", 28)

seattle = Cult.new("Seattle", "Seattle", 2020, "Life is cool")
olympia = Cult.new("Olympia", "Olympia", 2020, "Life is cool")
portland = Cult.new("Portland", "Portland", 2020, "Life is cool")

BloodOath.new(Cult.all.sample, Follower.all.sample)
BloodOath.new(Cult.all.sample, Follower.all.sample)
BloodOath.new(Cult.all.sample, Follower.all.sample)
BloodOath.new(Cult.all.sample, Follower.all.sample)
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits