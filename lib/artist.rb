class Artist
  attr_accessor :name, :song

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song)
    song=Song.new(song)
    song.artist = self
  end

  def self.song_count
    Song.all.length
  end

end #end of class
