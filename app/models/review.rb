class Review
    attr_accessor :viewer, :movie, :rating

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

    

end


# - `Review#initialize(viewer, movie, rating)`
#   - `Review` is initialized with a 
#   `Viewer` instance, a `
#   Movie` instance, and 
#   a rating (number)
