class Review
  attr_reader :movie, :viewer, :rating

  @@all =[]

  def initialize(args) 
    @viewer = args[:viewer]
    @movie = args[:movie]
    @rating = args[:rating]
    @@all << self
  end


end
