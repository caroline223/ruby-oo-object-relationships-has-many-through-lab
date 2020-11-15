class Genre

    @@all = []

    attr_accessor :name, :songs, :artist

    def initialize(name)
        @name = name
        @songs = songs
        @artist = artist
        @@all << self 
    end

    def self.all
        @@all 
    end

    def songs
        Song.all.each do |song|
            song.genre == self 
        end
    end

    def artists
        Song.all.map do |song|
            song.artist 
        end
    end
    

end