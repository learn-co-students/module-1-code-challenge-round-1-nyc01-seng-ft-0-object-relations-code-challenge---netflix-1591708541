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

    
    def viewer # i wanted to do review.viewer == self but it gave me an error ... I think i needed to have a method before this that gave me an array of the specific review instances and then itterate throught hat to get review.viewer 
        Review.all.select {|review| review == self} 
    end 

    def movie # i wanted to do review.movie == self but it gave me an error 
        Review.all.select {|review| review == self}
    end 


end

