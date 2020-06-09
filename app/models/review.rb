class Review
    attr_reader :viewer, :movie, :rating
    @@all = []
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie 
        @rating = rating
        @@all << self 
    end

    def self.all 
        @@all
    end


#     - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance
    def viewer
        @viewer
    end

# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance
    def movie
        @movie
    end
end
