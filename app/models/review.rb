class Review

    attr_reader :viewer, :movie
    attr_accessor :rating 

    @@all = []
    
    def initialize (viewer, movie, rating) #all reviews have these variables 
        @viewer = viewer 
        @movie = movie 
        @rating = rating 
        @@all << self 
    end 

    def self.all #returns array of all reviews 
        @@all
    end 

    def viewer #returns the viewer instance associated with review instance
    end 

    def movie #returns movie instance associated with review instance 
    end 


end
