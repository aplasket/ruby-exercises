class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect, :hunts_white_walkers

    def initialize(name, home = "Beyond the Wall", size = "Massive")
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
        @hunts_white_walkers = true
    end

    def protects(stark)
        if stark.location == @home
            @starks_to_protect << stark 
            stark.is_protected
            @hunts_white_walkers = false
        end
        process_extra_starks
    end

    def process_extra_starks
        return false if starks_to_protect.count <= 2
        extra_starks = @starks_to_protect.pop
    end

    def hunts_white_walkers?
        hunts_white_walkers
    end

    def leaves(stark)
        @starks_to_protect.pop
        stark.is_not_protected
        stark
    end
end

class Stark
    attr_reader :name, :location, :safe, :house_words
    def initialize(name, location = "Winterfell")
        @name = name
        @location = location
        @safe = false
        @house_words = "Winter is Coming"
    end

    def safe?
        safe
    end

    def is_protected
        @safe = true
    end

    def is_not_protected
        @safe = false
    end
end
