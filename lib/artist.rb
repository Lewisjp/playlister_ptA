class Artist

  attr_accessor :name, :songs

  ARTISTS = Array.new

  def initialize
    @name = name
    @songs = Array.new
    ARTISTS << self
  end

  def self.all # 'The Artist class can keep track of artists as they are created' => Display
    ARTISTS
  end 

  def self.count  # Number of Artists created 
    ARTISTS.count
  end
        
  def self.reset_artists # 'The Artist class can reset the artists that have been created'
    ARTISTS.clear
  end

  def songs_count # 'An artist can count how many songs they have'
    songs.count
  end

  def add_song(song)  # 'a song can be added to an artist'
    songs << song
    song.artist = self
  end

  def genres # 'artists have genres'
    songs.map{|song| song.genre}.uniq #.uniq does not allow repeats
  end

end