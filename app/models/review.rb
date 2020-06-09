class Review
    attr_accessor :viewer, :movie, :rating

    @@all = []

    def initialize(hash)
        @viewer = hash[:viewer]
        @movie = hash[:movie]
        @rating = hash[:rating]
        @@all << self
    end

    def self.all
        @@all
    end



end
