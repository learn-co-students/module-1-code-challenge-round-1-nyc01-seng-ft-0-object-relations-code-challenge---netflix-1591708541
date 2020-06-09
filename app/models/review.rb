# A `Movie` has many `Review`s. A `Viewer` has many `Review`s. A `Review` belongs to a `Viewer` and belongs to a `Movie`.
# `Viewer` - `Movie` is a many to many relationship.

# Deliverables use the notation `#` for instance methods, and `.` for class methods.

#------------------------------------------------------------------------


# - `Review#initialize(viewer, movie, rating)`
#   - `Review` is initialized with a `Viewer` instance, a `Movie` instance, and a rating (number)

# - `Review#rating`
#   - returns the rating for the `Review` instance

# - `Review.all`
#   - returns an array of all initialized `Review` instances

# - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance

# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance
#------------------------------------------------------------------------


class Review


end
