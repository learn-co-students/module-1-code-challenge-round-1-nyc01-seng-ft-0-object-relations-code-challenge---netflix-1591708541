class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.map do |review|
      review.movie 
    end
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.find do |el|
      if el == movie
        return true
      else
        return false
      end
    end
  end

  


  
end
