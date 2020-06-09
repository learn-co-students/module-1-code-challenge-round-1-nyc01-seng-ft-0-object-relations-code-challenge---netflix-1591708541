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
    self.reviews.map {|review| review.viewer} 
  end

  def average_rating                # I want to automatically make this a float. For now, reviews are initialized manually as a float.
    rating = 0
    reviews.map do |review|
      rating += review.rating
    end
    rating / reviews.length
  end

  def self.highest_rated 

  end

end