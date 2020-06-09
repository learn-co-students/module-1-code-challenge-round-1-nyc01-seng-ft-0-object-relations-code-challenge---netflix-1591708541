#- `Review#viewer`
#  - returns the `Viewer` instance associated with the `Review` instance
#- `Review#movie`
#  - returns the `Movie` instance associated with the `Review` instance


class Review

attr_accessor :viewer, :movie, :review, :rating

@@all = []

    def initialize(viewer, movie, review, rating = 0)
        @viewer = viewer
        @movie = movie
        @review = review
        @rating = rating

        @@all << self
    end

    def self.all
        @@all
    end
    
end
