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
    Review.all.map {|movie| movie.movie}
  end

  def reviewers
    Viewer.all.select {|movie| movie.movie = self}
  end
end
