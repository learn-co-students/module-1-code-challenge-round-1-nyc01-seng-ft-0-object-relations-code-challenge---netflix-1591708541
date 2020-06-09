class Review
  @@all = []
  attr_reader :viewer, :movie
  attr_accessor :rating

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  #def viewer
  #  @viewer
  #end
#
  #def movie
  #  @movie 
  #end
#
  #def rating
  #  @rating
  #end



end
