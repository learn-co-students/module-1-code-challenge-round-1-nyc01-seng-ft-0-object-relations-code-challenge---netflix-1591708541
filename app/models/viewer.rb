class Viewer
  attr_accessor :username, :rating

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end


  def reviews
    Review.all.select{|rev_obj| rev_obj.viewer == self}
  end

  def reviewed_movies
    self.reviews.map{|rev_obj| rev_obj.movie}
  end

  def reviewed_movie?(movie)
    movie.reviewers.include?(self)
  end
  
  def find_review(movie)
    self.reviews.find{|rev_obj| rev_obj.movie == movie}
  end

  def rate_movie(movie,rating)
    if self.reviewed_movie?(movie) == true
      self.find_review(movie).rating = rating
    else
    Review.new(self,movie,rating)
    end
  end

end



