class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviews.map {|review| review.viewer}
  end

  #here i went through all the movies selecting the review returning the length
  #of the reviews and adding them all up with sum. I then divided by the total
  # of ratings
  def average_rating
    self.all.select {|movie| movie.review.length}.sum / .length

  end
  
  #here i used the max_by reason because we are looking to find the max
  #in this case (highest rating) of movie (why we use self) and divide it by
  #the ratings total/average rating of those reviews
  def self.highest_rated
    self.all.max_by do |review|
      review.rating.length / review.average_rating
    end
  end



end
