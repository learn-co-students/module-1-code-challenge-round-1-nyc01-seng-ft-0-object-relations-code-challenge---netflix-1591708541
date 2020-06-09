class Review
attr_accessor :viewer, :movie, :rating
@@all = []
def initialize(viewer, movie, rating)
    @viewer = viewer
    @@all << self
end
def self.all
    @@all
end
end
