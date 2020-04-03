require_relative "../config/environment.rb"

class Artist
  
  attr_accessor :name, :songs
  attr_reader :genres
  
  extend Findable
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    save
end

def self.all
  @@all
end

def self.destroy_all
  self.all.clear
end

def save
  @@all << self
end

def self.create(name)
 name = self.new(name)
end

  def add_song(song)
  song.artist = self unless song.artist
  songs.push song unless songs.include?(song)
  end

def genres
  songs.map(&:genre).uniq
end

end
