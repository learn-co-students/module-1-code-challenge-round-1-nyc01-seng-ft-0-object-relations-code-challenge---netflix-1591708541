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

  def reviewed_movie?(movie)
    if find_movie(movie)
      true
    else
      false
    end
  end

  def rate_movie(movie, rating)
    if !self.reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      find_review(movie).rating = rating
      find_review(movie) #making sure to return the movie instance in both case for consistancy
    end
  end

  def self.all
    @@all
  end

  private
  #making my helper methods private

  def find_movie(movie)
    self.reviewed_movies.find{ |m| m == movie } #helper method for reviewed_movie? - finds a particular movie instance in reviewed_movies or returns nil
  end

  def find_review(movie) #helper to find a particular review of a movie
    self.reviews.find { |review|
      review.movie == movie
    }
  end
  
end
