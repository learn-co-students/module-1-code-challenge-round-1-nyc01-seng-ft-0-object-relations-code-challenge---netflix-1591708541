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
    Review.all.select {|review| review == self}
  end 

  def reviewers
    Review.all.select {|review| review == self}
  end 

end
