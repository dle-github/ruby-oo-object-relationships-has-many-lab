class Artist
    attr_accessor :name
    

    def initialize(input)
        p "initialize Artist with name: [#{input}]"
        ######################
        @name = input
        @songs = []
    end

    def add_song(input)
        p "==========================="
        p "[add_song]"
        p "input song: [#{input}]"
        ######################
        input.artist= self
        p "set [#{input}]'s artist to [#{self}]"
        ######################
        @songs << input
        p "added song [#{input}] to array @song"
    end

    def add_song_by_name(input)
        p "==========================="
        p "[add_song_by_name]"
        p "input song: [#{input}]"
        ######################
        song = Song.new(input)
        p "create new song [#{song}] via add_song_by_name"
        song.artist = self
        p "set song [#{song}]'s artist to [#{self}]"
    end

    def self.song_count
        p "==========================="
        p "[self.song_count]"
        ######################
        p Song.all.count
    end

    def songs
        p "==========================="
        p "[songs]"
        ######################
        @songs
    end   
end