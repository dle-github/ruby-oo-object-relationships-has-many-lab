class Song
    attr_accessor :name
    attr_reader :artist
    @@all = Array.new

    def initialize(input)
        p "initialize Song with name: [#{input}]"
        ######################
        @name = input
        @artist = nil
        ######################
        @@all << self
    end
    
    def artist=(input)
        p "==========================="
        p "[artist]"
        p "input artist: [#{input}]"
        ######################
        @artist = input
        p "[#{self.name}]'s @artist.name is now [#{@artist.name}]"
        ######################
        @artist.songs << self
        p "added song [#{self.name}] to the array: [#{@artist.songs}]"
    end

    def artist_name
        if @artist == nil
            return @artist
        else
            return @artist.name
        end
    end

    def self.all
        p "==========================="
        p "[self.all]"
        ######################
        @@all
    end
end