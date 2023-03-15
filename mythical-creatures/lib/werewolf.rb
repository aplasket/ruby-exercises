class Werewolf
    attr_reader :name, :location, :human, :wolf, :hungry, :victims
    def initialize(name, location = "London")
        @name = name
        @location = location
        @human = true
        @wolf = false
        @hungry = false
        @victims = 0
    end

    def human?
        human
    end

    def wolf?
        wolf
    end

    def hungry?
        hungry
    end

    def change!
        if @human == true
            @wolf = true
            @human = false
            @hungry = true
        else
            @wolf = false
            @human = true
            @hungry = false
        end
    end

    def consumes_victims(victim)
        if !@human 
            @victims += 1
            @hungry = false
            victim.status = :dead
            "Yum!"
        else
            "Ew!!!"

        end
    end
end
# alternative method

#another option for consumes_victims(victim) method
#  def consumes_victims(victim)
#         if @human == true
#             victim.status = :alive
#         else @victims += 1
#             @wolf == true
#             @hungry = false
#             victim.status = :dead
#         end
#     end

#initial way:
# class Werewolf
#     attr_accessor :name, :location, :human, :wolf, :hungry, :victims
    # def initialize(name, location = "London")
    #     @name = name
    #     @location = location
    #     @human = true
    #     @wolf = false
    #     @hungry = false
        # @victims = 0

# def hungry?
#     if @human|| @victims > 0
#        @hungry = false 
#     elsif @wolf
#        @hungry = true
#    end
# end

# def consumes_victims 
#    if !@human
#        @victims += 1
#    end
# end

# require "pry"; binding.pry