class Review

attr_accessor :viewer, :movie, :review

@@all = []

    def initialize(viewer, movie, review)
        @viewer = viewer
        @movie = movie
        @review = review

        @@all << self
    end

    def self.all
        @@all
    end

end
