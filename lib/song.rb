class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  
  @@artists = []
  
  @@genres = []
  
  @@genre_hash == {}
  
  def initialize(name, artist, genre)
   @@count += 1 
   
    @name = name 
    
    @artist = artist 
    @@artists << @artist 
    
    @genre = genre
    @@genres << @genre 
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.genre_count 
    @@genres.each do |genre|
      if @@genre_hash.has_key?(genre)
    end 
  end 
  
  
end 