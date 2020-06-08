require 'bundler/setup'
Bundler.require
require_rel '../app' 

class Cult
    attr_accessor :name, :location, :founding_year

    def initialize(name)
        @name = name
        @location = location
        @founding_year = int
    end
end

