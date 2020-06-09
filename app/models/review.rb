# A `Movie` has many `Review`s. A `Viewer` has many `Review`s. A `Review` belongs to a `Viewer` and belongs to a `Movie`.
# `Viewer` - `Movie` is a many to many relationship.

# Deliverables use the notation `#` for instance methods, and `.` for class methods.

#------------------------------------------------------------------------


    # - `Review#initialize(viewer, movie, rating)`
    #   - `Review` is initialized with a `Viewer` instance, a `Movie` instance, and a rating (number)

    # - `Review#rating`
    #   - returns the rating for the `Review` instance

    # - `Review.all`
    #   - returns an array of all initialized `Review` instances

    # - `Review#viewer`
    #   - returns the `Viewer` instance associated with the `Review` instance

# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance
#------------------------------------------------------------------------


class Review

    attr_reader :movie, :viewer, :rating

    # class variable contains each Review instance
    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie  = movie
        @rating = rating
        
        @@all << self
    end

    # class method returns array with each Review instance
    def self.all
        @@all
    end

    # returns the rating for the `Review` instance (Instance Method)
    def rating
        self
    end

    # returns the `Viewer` instance associated with the `Review` instance
    def review_viewer
        Review.all.select { |review| review.viewer == self.viewer }
    end



end
