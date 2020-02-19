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
    post.author = self
  end
  
  def posts
    Post.all.select {|post| post.author == self}
end 

def add_post_by_title(title)
  song = Song.new(name)
  song.artist = self
end

def self.song_count
  Song.all.count 
end 

end 