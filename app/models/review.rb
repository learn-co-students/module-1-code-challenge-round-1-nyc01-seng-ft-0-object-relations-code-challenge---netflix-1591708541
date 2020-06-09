class Review

    attr_reader :rating, :viewer, :movie #returns the rating for the Review Instance

    @@all = [] #collects each instance of the Review class (this is the single source of truth)
 
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all #returns an array of all Review instances created
        @@all
    end




end
