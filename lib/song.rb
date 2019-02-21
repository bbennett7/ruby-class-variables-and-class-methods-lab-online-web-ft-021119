class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  
  @@artists = []
  
  @@genres = []
  
  @@genre_hash = {}
  
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
      if !@@genre_hash.has_key?(genre)
        @@genre_hash[genre] = @@genres.count(genre)
      end
    end 
    @@genre_hash 
  end 
  
  
end 