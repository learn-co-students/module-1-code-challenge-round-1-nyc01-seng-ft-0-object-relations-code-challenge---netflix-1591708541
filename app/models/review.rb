class Review
  @@all = []
  attr_reader :rating

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def self.all
      @@all
  end

  def viewer
    Review.all.select do |i|
      i.viewer == self
    end
  end

  def movie
    Review.all.select do |i|
      i.movie == self
    end
  end


end








### Object Relationship Methods
# - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance
# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance
