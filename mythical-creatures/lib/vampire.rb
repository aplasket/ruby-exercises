class Vampire

    attr_reader :name, :pet, :thirsty

    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end


end

vampire1 = Vampire.new("steven")
p vampire1

vampire2 = Vampire.new("Bob", "spider")
p vampire2.drink
p vampire2