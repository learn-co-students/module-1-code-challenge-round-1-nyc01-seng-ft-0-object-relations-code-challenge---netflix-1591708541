class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    # self.class.all << self    I have no idea what this is.
    @@all << self
  end

  def self.all
    @@all 
  end
  
end