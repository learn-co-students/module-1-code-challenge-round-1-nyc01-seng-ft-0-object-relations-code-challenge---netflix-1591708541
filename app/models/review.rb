class Review
    attr_reader :viewer, :movie
    attr_accessor :rating               #changed to an accessor for Viewer#rate_movie
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