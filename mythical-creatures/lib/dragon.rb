class Dragon
    attr_reader :name, :color, :rider, :meals, :hungry

    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @meals = 0
        @hungry = true
    end

    def hungry?
       hungry
    end

  #more efficient method for define eat
    def eat
        @meals += 1
        @hungry = false if @meals == 3
    end
  
  #original method:
    # def eat
    #     @meals += 1
    #     if @meals == 3
    #         @hungry = false
    #     end
    # end
end
