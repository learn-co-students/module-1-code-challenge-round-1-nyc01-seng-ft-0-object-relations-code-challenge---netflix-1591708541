class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.select { |review|
      review.viewer == self
    }
  end

  def reviewed_movies
    self.reviews.map{ |review|
      review.movie
    }
  end

  def find_movie(movie)
    self.reviewed_movies.find{ |m| m == movie }
  end

  def reviewed_movie?(movie)
    if self.find_movie(movie)
      true
    else
      false
    end
  end

  def rate_movie(movie, rating)
    if !self.reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      self.find_movie.rating = rating
    end
  end

  def self.all
    @@all
  end
  
end
