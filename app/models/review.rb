class Review
    attr_reader :rating

    @@all = []

    def initialize (viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def viewer
        Review.all.select do |review|
            review.viewer
        end
    end

    def movie
        Review.all.select do |review|
            review.movie
        end
    end    


end
