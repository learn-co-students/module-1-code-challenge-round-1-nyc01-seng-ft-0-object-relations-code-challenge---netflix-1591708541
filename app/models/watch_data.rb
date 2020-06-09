class watchData
    @@all = []
    attr_reader 
    def initialize(viewer, movie)
        @viewer = viewer
        @movie = movie
        @@all << self
    end
    def self.all
        @@all
    end
end