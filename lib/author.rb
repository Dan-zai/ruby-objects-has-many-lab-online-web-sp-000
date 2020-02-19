class Author
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
  @@all
end 
  
  def add_post(post)
    post.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
end 

def add_song_by_name(name)
  song = Song.new(name)
  song.artist = self
end

def self.song_count
  Song.all.count 
end 

end 