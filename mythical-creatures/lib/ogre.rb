
class Ogre
    attr_reader :name, :home, :encounter_counter, :swings
    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @encounter_counter = 0
        @swings = 0
    end

    def encounter(human)
        @encounter_counter += 1
        human.increase_encounters
        if human.notices_ogre?
            swing_at(human)
        end
    end
    
    def swing_at(human)
        @swings += 1
        human.knock_unconscious if swings % 2 == 0
    end

    def apologize(human)
        human.revive
        @swings = 0
    end
end

class Human
    attr_reader :name, :encounter_counter, :knocked_out
    def initialize(name = "Jane")
        @name = name
        @encounter_counter = 0
        @knocked_out = false
    end

    def increase_encounters
        @encounter_counter += 1
    end

    def notices_ogre?
        @encounter_counter % 3 == 0
    end

    def knocked_out?
        knocked_out
    end

    def knock_unconscious
        @knocked_out = true
    end

    def revive
        @encounter_counter = 0 
        @knocked_out = false
    end
end


# before refactoring:

# class Ogre

#     attr_reader :name, :home, :swings, :encounter_counter
#     def initialize(name, home = "Swamp")
#         @name = name
#         @home = home
#         @swings = 0
#         @encounter_counter = 0
#     end

#     def encounter(human)
#         @encounter_counter += 1
#         human.encounter_counter += 1
#         if human.notices_ogre?
#             swing_at(human)
#         end
#     end
    
#     def swing_at(human)
#         @swings += 1
#     end

#     def apologize(human)
#         human.encounter_counter = 0
#         @swings = 0
        
#     end

# end

# class Human

#     attr_accessor :encounter_counter
#     attr_reader :name
#     def initialize(name = "Jane")
#         @name = name
#         @encounter_counter = 0
#     end

#     def notices_ogre?
#         return @encounter_counter % 3 == 0
#     end

#     def knocked_out?
#         return true if encounter_counter >= 3
#         false
#     end

# end


# original starting code:
# class Ogre

#     attr_reader :name, :home, :swings
#     def initialize(name, home = "Swamp")
#         @name = name
#         @home = home
#         @swings = 0

#     end

#     def encounter(human)
#         human.encounter_counter += 1
#         if human.encounter_counter % 3 == 0
#             @swings += 1
#         end
#     end
    
#     def swing_at(human)
#         @swings += 1
#     end

    

# end

# class Human

#     attr_accessor :name, :encounter_counter, :notices_ogre, :knocked_out
#     def initialize(name = "Jane")
#         @name = name
#         @encounter_counter = 0
#         @notices_ogre = false
#         @knocked_out = false
#     end

#     def notices_ogre?
#         return true if @encounter_counter % 3 == 0        
#     end

#    def knocked_out?
#         if encounter_counter >= 3
#             @knocked_out = true
#         end
#    end

# end