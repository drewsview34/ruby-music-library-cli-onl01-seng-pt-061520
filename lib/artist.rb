<<<<<<< HEAD
class Artist

    extend Concerns::Findable

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        save
        @songs = []
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

    def save
        @@all << self
    end

    def self.create(name)
        new_artist = Artist.new(name)
        new_artist
    end

    def add_song(song)
        song.artist = self unless song.artist
        songs << song unless songs.include?(song)
    end

    def genres
        songs.collect {|song| song.genre}.uniq
    end

=======
class Artist
  
  extend Concerns::Findable
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    
    #Artist has many Song(s)
    @songs = []
    save
  end
  
  def self.all 
    @@all
  end
  
  def save 
    @@all << self
  end
  
  #Song belongs to Artist
  def add_song(song)
                        #if song.artist != self
    song.artist == self ? self : song.artist = self 
    #@songs << song unless @songs.include?(song)
    @songs.include?(song) ? song : @songs << song 
  end
  
  def self.create(name)
    create_artist = Artist.new(name)
  end
  
  def self.destroy_all 
    @@all.clear
  end
  
#Artist has many Genre through Song
  def genres 
    songs.collect {|song| song.genre}.uniq
  end

>>>>>>> 673ce82bf44862ee7cdfecf5fa1f8c3f9ff4d633
end