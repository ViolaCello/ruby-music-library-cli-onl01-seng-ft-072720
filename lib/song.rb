class Song 
  attr_accessor :name, :artist 
   @@all = []
   
  def initialize(name, artist="")
    @name = name 
   @@all.push(self)
   if artist !="" then self.artist = artist
   
 end
 end
 
 def self.all
   @@all
 end
 
 def self.destroy_all
   @@all = []
 end
 
 def save
    self.class.all << self 
  end
  
  def self.create(name)
  s = self.new(name)
  #s.name = name
  s.save
  s 
end
  
 #   def artist=(artist)
  #      artist.add_song(self)
  #  end
    
   # def artist_name=(name)
   # self.artist = Artist.find_or_create_by_name(name)
   # binding.pry
  #end
  
      def self.find_or_create_by_name(name)
        if @@all.detect{|i| i.name == name}
     #    @@all.detect{|i| i.name == name}
   else
      self.new(name)
      # self.name
    end
  end
  
  
end