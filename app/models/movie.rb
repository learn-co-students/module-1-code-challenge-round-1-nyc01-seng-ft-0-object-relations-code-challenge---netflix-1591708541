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

  # def title=(title)     <----exist bc of attr_accessor
  #   @title = title
  # end

  # def title     <----exist bc of attr_accessor
  #   @title
  # end

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


# #### Movie

      # - `Movie#average_rating`
      #   - returns the average of all ratings for the `Movie` instance
      #   - to average ratings, add all ratings together and divide by the total number of ratings.
      # - `Movie.highest_rated`
      #   - returns the `Movie` instance with the highest average rating.


#### Movie

        # - `Movie#reviews`
        #   - returns an array of all the `Review` instances for the `Movie`.
        # - `Movie#reviewers`
        #   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

# #### Movie

        # - `Movie#initialize(title)`
        #   - `Movie` is initialized with a title (string)
        #   - title **can be** changed after the `Movie` is initialized
        # - `Movie#title`
        #   - returns the `Movie`'s title
          # - `Movie.all`
          #   - returns an array of all the `Movie` instances that have been initialized
