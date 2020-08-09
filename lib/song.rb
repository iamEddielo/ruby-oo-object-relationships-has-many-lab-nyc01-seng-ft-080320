require 'pry'
class Song
    @@all=[]
    
    attr_accessor :artist, :name
   
    def initialize(name)
        @name= name
        @@all << self
        #need to save the newly created baby
    end

    def self.all #class method,class getter/reader
        @@all
    end

    def artist_name
      artist.name if artist
    end

    #keke=Song.new("Keke,do you Love me")
    #binding.pry

#binding.pry
    
end



