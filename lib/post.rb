class Post
    attr_accessor :title
    attr_reader :author
    @@all = Array.new

    def initialize(input)
        p "initialize Post with name: [#{input}]"
        ######################
        @title = input
        @author = nil
        ######################
        @@all << self
    end

    def author=(input)
        p "==========================="
        p "[author]"
        p "input author: [#{input}]"
        ######################
        @author = input
        p "[#{self.title}]'s @author.name is now [#{@author.name}]"
        ######################
        @author.posts << self
        p "added posts [#{self.title}] to the array: [#{@author.posts}]"
    end

    def author_name
        if @author == nil
            return @author
        else
            return @author.name
        end
    end

    def self.all
        p "==========================="
        p "[self.all]"
        ######################
        @@all
    end
end