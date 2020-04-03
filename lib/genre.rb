class Genre
  
  extend Concerns::Findable
  attr_accessor :name, :songs
  
  
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

def self.create(new_genre)
  new_genre = self.new(name)
  new_genre.save
  new_genre
end

def artists
  songs.map(&:artist).uniq
end
end
