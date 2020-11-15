class Artist

    @@all = []

    attr_accessor :name, :songs, :genres

    def initialize(name)
        @name = name
        @songs = songs
        @genres = genres
        @@all << self 
    end

    def self.all
        @@all 
    end

    def songs
        Song.all.select do |song|
            song.artist == self 
        end
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        self.songs.last 
    end

    def genres
        Song.all.map do |song|
            song.genre 
        end
    end
    

end