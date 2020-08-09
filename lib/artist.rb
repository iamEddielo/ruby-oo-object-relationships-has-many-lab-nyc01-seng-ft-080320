require 'pry'

class Artist
    attr_accessor :name, :songs
    
    
    def initialize(name)
        @name = name
        
    end

    def songs
        Song.all.filter{|ele| self == ele.artist} #im going into Song class and pulling out
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        self.add_song(song)
    end

    def self.song_count
        Song.all.count
    end
#binding.pry
end


#travis_scott = Artist.new("Travis")
#flowers = Song.new("flowers")

#travis_scott.add_song(flowers)







