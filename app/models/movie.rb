class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    # self.class.all << self    I have no idea what this is.
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
      #iterate through reviews array and select movie == self
      reviewes = Review.all.select {|review| review.movie == self}
      #iterate through new array and select viewers
      reviews.viewer
  end

end