class MusicImporter
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end
  
  def files
    my_files = Dir.glob("#{@path}/*.mp3")

    my_files.collect do |e|
      e.gsub("#{@path}/","")
    end
  end
  
  def import
    files.each{ |filename| Song.create_from_filename(filename) }
  end
  
  
end
