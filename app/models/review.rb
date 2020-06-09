class Review
attr_accessor : rating
@@all=[]

def initialize(viewer, movie, rating)
    @viewer=viewer
    @movie=movie
    @rating=rating
end

def self.rating
    @rating 
end

def self.all
    @@all
end

def self.viewer
    @viewer 
end

def self.movie
    @movie
end




end
