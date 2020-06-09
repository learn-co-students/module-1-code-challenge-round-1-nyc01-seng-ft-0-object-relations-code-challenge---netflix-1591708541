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
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    Review.all.map do |review|
      review.viewer
    end
  end

  def average_rating
      Review.all.map do |review| #add up all ratings from the array that the reviews produces. Then divide that sum by the amount of elements in that array
        review.rating += sum
      end
      avg = sum / Review.all.count 
      avg #return the average
  end

  def highest_rated
      average_rating #uses the average_rating method and compares each avg rating to the other (prob starting at a min avg of 0)

  end





end
