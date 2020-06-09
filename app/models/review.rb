class Review

    attr_accessor :rating, :viewer, :movie 

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

    def viewers #returns the viewer instance associated with review instance | altered method name for stack level too deep error 
        self.viewer #calling single instance and viewer reader method
    end 
    
     

    def movies #returns movie instance associated with review instance | altered method name for stack level too deep error 
        self.movie #calling single instance and movie reader method
    end 


end
