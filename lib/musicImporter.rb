<<<<<<< HEAD
class MusicImporter
  
    attr_accessor :path 
    
    def initialize(path)
      @path = path 
    end
    
    def files
      @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
    end
    
    def import 
      files.each {|song| Song.create_from_filename(song)}
    end
    
=======
class MusicImporter
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(@path).select {|file| !File.directory?(file) && file.end_with?(".mp3")}
  end
  
  def import 
    files.each {|file| Song.create_from_filename(file)}
  end
  
>>>>>>> 673ce82bf44862ee7cdfecf5fa1f8c3f9ff4d633
end