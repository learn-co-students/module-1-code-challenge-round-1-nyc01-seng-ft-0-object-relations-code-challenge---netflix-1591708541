class Review   #SINGLE SOURCE OF TRUTH

 attr_reader :viewer, :movie, :rating  

 @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer 
        @movie = movie 
        @rating = rating.to_i
        @@all << self
    end
    
    def self.all
        @@all
    end


end
