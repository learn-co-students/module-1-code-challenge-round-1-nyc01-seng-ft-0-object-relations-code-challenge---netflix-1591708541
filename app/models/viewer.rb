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

  # def username=(username)
  #   @username = username
  # end

  # def username
  #   @username
  # end

  def reviews
    Review.all.select{|rev_obj| rev_obj.viewer == self}
  end

  def reviewed_movies
    self.reviews.map{|rev_obj| rev_obj.movie}
  end
  
end


# #### Viewer

        # - `Viewer#reviews`
        #   - returns an array of `Review` instances associated with the `Viewer` instance.
        # - `Viewer#reviewed_movies`
        #   - returns an array of `Movie` instances reviewed by the `Viewer` instance.

# #### Viewer

        # - `Viewer#initialize(username)`
        #   - `Viewer` is initialized with a username (string)
        #   - username **can be** changed after the Viewer is initialized
        # - `Viewer#username`
        #   - returns the Viewer's username
        # - `Viewer.all`
        #   - returns an array of all the Viewer instances that have been initialized
