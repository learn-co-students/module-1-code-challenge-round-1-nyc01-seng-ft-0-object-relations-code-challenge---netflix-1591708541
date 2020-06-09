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
    Review.all.select{|rev_obj| rev_obj.movie == self}
  end

  def reviewers
    self.reviews.map{|rev_obj| rev_obj.viewer}
  end

  def average_rating
  sum = self.reviews.inject(0){|sum,rev_obj| sum + rev_obj.rating}
  sum.to_f / self.reviews.length.to_f
  end

def self.highest_rated
  highest = Review.all.max_by{|rev_obj| rev_obj.rating}
  highest.movie
end

end



