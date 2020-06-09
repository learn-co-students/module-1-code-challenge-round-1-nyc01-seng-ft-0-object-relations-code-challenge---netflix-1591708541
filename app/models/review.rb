 add class Review
    att_reader :
   
    def initialize(title)
        @title = title
        self.class.all << self
      end
    

  


end
