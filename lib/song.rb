class Song 
  attr_accessor :name, :artist, :genre 
  
  @@song_counter = 0
  
  @@artists = []
  
  @@genres = []
  
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @@song_counter += 1 
    
    @name = name
    
    @artist = artist 
    unless @@artists.include?(artist) 
      @@artists << artist 
    end 
    
    @genre = genre 
    unless @genres.include?(genre)
      @@genres << genre 
    end 
  end
  
  def artists 
    puts @@artists 
  end 
  
  def genres 
    puts @@genres 
  end 
end 