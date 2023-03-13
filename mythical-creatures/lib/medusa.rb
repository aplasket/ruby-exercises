class Medusa
    attr_reader :name, :statues 
    
    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
        if statues.length <= 2
        @statues << victim 
       victim.stoned = true
        else
            old_victim = @statues.shift
            old_victim.stoned = false
            victim.stoned = true
            @statues << victim
        end
      
    end

end

class Person
    attr_reader :name 
    attr_accessor :stoned

    def initialize(name)
        @name = name
        @stoned = false
    end

    def stoned?
       stoned
    end

end

# require "pry"; binding.pry