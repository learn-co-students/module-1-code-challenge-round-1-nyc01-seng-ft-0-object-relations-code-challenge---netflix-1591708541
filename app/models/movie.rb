class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title

    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    Review.all.select do |review|
      if review.movie == self
        review.viewer.name
      end
    end
  end

end
