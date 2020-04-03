module Findable
  def find_by_name(name)
    @@all.detect{|artist| artist.name == name}
  end
end