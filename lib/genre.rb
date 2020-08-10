<<<<<<< HEAD
class Genre

    extend Concerns::Findable

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
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
        new_genre = Genre.new(name)
        new_genre.save
        new_genre
    end

    def artists
        songs.collect{ |song| song.artist }.uniq 
    end
=======
class Genre
  
  extend Concerns::Findable
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all 
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    create_genre = Genre.new(name)
  end
  
  def self.destroy_all 
    @@all.clear
  end
  
  def artists
    songs.collect {|song| song.artist}.uniq
  end
  
>>>>>>> 673ce82bf44862ee7cdfecf5fa1f8c3f9ff4d633
end