class Hobbit
   
    attr_reader :name, :disposition, :age, :adult, :old, :has_ring, :short

    def initialize(name, disposition = "homebody")
        @name = name
        @disposition = disposition
        @age = 0
        @adult = false
        @old = false
        @has_ring = false
        @short = true

        def has_ring?
            has_ring
        end

        if @name == "Frodo"
            @has_ring = true
        end

    end
    
    def is_short?
        short
    end


    def adult?
        adult
    end

    def old?
        old
    end

    def celebrate_birthday
        @age += 1
        if @age >= 101
            @old = true
        elsif @age > 32
            @adult = true
        end
    end

end

# hob1 = Hobbit.new("Freddy", "sunny")
# 101.times { hob1.celebrate_birthday }
# # pp hob1
# p hob1.adult?


# # hob2 = Hobbit.new("Frodo")
# # 32.times { hob2.celebrate_birthday}
# # pp hob2