class Viewer

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def add_review(movie, review, rating = 0)
    Review.new(self, movie, review, rating)
  end

  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |review|
      review.movie
    end
  end

  def reviewed_movie?(movie)
    reviewed_movies.include? 'movie'
  end


  
end
