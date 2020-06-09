class Movie
  attr_accessor :title

  @@all = []

  def initialize(hash)
    @title = hash [:title]
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.movie == @title
    end
  end

  def reviewers
    reviews.map do |movie|
      movie.viewer
    end
  end


  # def self.highest_rated
  #   self.max do |rating|
  #     rating.
  # end

end
