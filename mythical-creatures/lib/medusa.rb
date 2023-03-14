#refactored code
class Medusa
    attr_reader :name, :statues
    def initialize(name)
        @name = name
        @statues = []
    end
    
    def stare(victim)
        @statues << victim
        victim.make_stoned
        process_extra_victims
    end
    
    def process_extra_victims
        return false if statues.count <= 3
        old_victim = @statues.shift
        old_victim.make_unstoned
    end


end

class Person
    attr_reader :name, :stoned

    def initialize(name)
        @name = name
        @stoned = false
    end

    def make_stoned
        @stoned = true
    end

    def make_unstoned
        @stoned = false
    end

    def stoned?
        stoned
    end

end







# require "pry"; binding.pry



#initial code before above refactoring

# class Medusa
#      attr_reader :name, :statues 
#      def initialize(name)
#         @name = name
#         @statues = []
#     end

    # def stare(victim)
        # if statues.length <= 2
        #   @statues << victim 
        #   victim.stoned = true
        #  else
            # old_victim = @statues.shift
            # old_victim.stoned = false
            # @statues << victim
        # end
    # end
# end

# class Person
#     attr_reader :name
#     attr_accessor :stoned

#     def initialize(name)
#         @name = name
#         @stoned = false
#     end

#     def stoned?
#        stoned
#     end

# end