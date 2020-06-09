class Review
    attr_reader :rating, :viewer, :movie
    @@all = []

    def initialize(viewer,movie,rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    # def rating
    #     @rating
    # end

#    def viewer
#     @viewer
#    end

    # def movie
    #     @movie
    # end

end



# #### Review

        # - `Review#viewer`
        #   - returns the `Viewer` instance associated with the `Review` instance
        # - `Review#movie`
        #   - returns the `Movie` instance associated with the `Review` instance

# #### Review

        # - `Review#initialize(viewer, movie, rating)`
        #   - `Review` is initialized with a `Viewer` instance, a `Movie` instance, and a rating (number)
        # - `Review#rating`
        #   - returns the rating for the `Review` instance
        # - `Review.all`
        #   - returns an array of all initialized `Review` instances

