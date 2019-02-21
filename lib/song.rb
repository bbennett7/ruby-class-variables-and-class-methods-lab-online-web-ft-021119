class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  
  @@artists = []
  
  @@genres = []
  
  @@artist_hash = {}
  
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
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.artists 
    @@artists.uniq
  end 
  
  def self.genre_count 
    @@genres.each do |genre|
      if !@@genre_hash.has_key?(genre)
        @@genre_hash[genre] = @@genres.count(genre)
      end
    end 
    @@genre_hash 
  end 
  
  def self.artist_count 
    @@artists.each do |artist|
      if !@@artist_hash.has_key?(artist)
        @@artist_hash[artist] = @@artists.count(artist)
      end 
    end 
    @@artist_hash 
  end 
  
end 