class Author
    attr_accessor :name
    

    def initialize(input)
        p "initialize Author with name: [#{input}]"
        ######################
        @name = input
        @posts = []
    end

    def add_post(input)
        p "==========================="
        p "[add_post]"
        p "input post: [#{input}]"
        ######################
        input.author = self
        p "set [#{input}]'s author to [#{self}]"
        ######################
        @posts << input
        p "added post [#{input}] to array @posts"
    end

    def add_post_by_title(input)
        p "==========================="
        p "[add_post_by_title]"
        p "input post: [#{input}]"
        ######################
        post = Post.new(input)
        p "create new post [#{post}] via add_post_by_title"
        post.author = self
        p "set post [#{post}]'s author to [#{self}]"
    end

    def self.post_count
        p "==========================="
        p "[self.post_count]"
        ######################
        p Post.all.count
    end

    def posts
        p "==========================="
        p "[posts]"
        ######################
        @posts
    end   
end