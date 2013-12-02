class Song

  attr_accessor :artist, :genre, :name

  def genre=(genre)
    @genre = genre # 'A genre has a name' 
    genre.songs << self # 'A genre has many songs' 
  end

end