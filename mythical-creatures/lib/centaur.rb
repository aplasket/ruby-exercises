class Centaur
    attr_reader :name, :breed, :cranky, :standing, :laying, :status
    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @laying = false
        @activities = 0
        @status = :awake
      
    end

 
    def cranky?
        return @cranky = false if @activities < 3 || @status == :slept
        return @cranky = true
        #alternative method:
        # if @activities < 3 || @status == :slept
        #    @cranky = false
        # else
        #    @cranky = true
        # end
     end
   
     def shoot
         @activities += 1
         if !@cranky && !@laying
            "Twang!!!"
        else
           "NO!"  
         end
     end
     
     def run
        @activities += 1
        if @laying 
          "NO!"
        else 
        "Clop clop clop clop!"
        end
     end
 
     def standing?
         standing
     end

     def laying?
        laying
     end

     def sleep
        if @laying
          @status = :slept
        elsif @standing
            "NO!"
        end
     end

     def lay_down
        @standing = false
        @laying = true
     end

     def stand_up
        @standing = true
        @laying = false
     end

   
     def drink_potion
        if @standing && @status != :rested
            @status = :rested 
          "Yumm!"
        elsif @laying
           "NO! I must stand first"
        else
          @status = :sick
          "Bleh! That makes me sick. I've already had too much"
        end
     end

    
end

#alternative ways for the rested and drink methods

#attr_reader :rested
  # @rested = false

   #  def rested?
    #     rested
    #  end
