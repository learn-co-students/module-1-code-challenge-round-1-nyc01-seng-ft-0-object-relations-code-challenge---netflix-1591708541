class Review
    #sst class

    atrr_reader :viewer, :movie, :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @review = review
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def viewer
        #need to return viewer
        #associated with review


    end

    def movie
        #need to return movie 
        #associated with review

    end


end
