class Pirate
    attr_reader :name, :job, :cursed

    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @cursed = false
        @heninous_acts = 0
        @booty = 0
    end

    def cursed?
        cursed
    end

    def commit_heinous_act
       @heninous_acts += 1
       if @heninous_acts > 2
            @cursed = true
       else
            @cursed = false
       end
    end


    def rob_ships
        @booty += 100
    end

end

pirate1 = Pirate.new("Bob", "plumber")
p pirate1.cursed?
3.times { pirate1.commit_heinous_act }
p pirate1.cursed?
3.times { pirate1.rob_ships }
pp pirate1