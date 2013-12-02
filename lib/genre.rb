class Genre

  attr_accessor :name, :songs, :artists

  GENRES = Array.new

  def initialize #'The Genre class can keep track of all created genres'
    GENRES << self
  end

  def self.all #'The Genre class can keep track of all created genres' => Display 
    GENRES
  end

  def self.reset_genres #'The Genre class can be reset'
    GENRES.clear
  end

  def artists # 'A genres Artists are unique'
    songs.map{|song| song.artist}.uniq #.uniq does not allow repeats 
  end

  def songs  # 'A genre has many songs'
    @songs ||= Array.new #if no songs in the array, default to new array
  end

end