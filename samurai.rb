require_relative 'human'
class Samurai < Human
    def initialize
        @health = 200
        @@count += 1
        super
    end
    def death_blow (obj)
        if obj.class.ancestors.include?(Human)
            obj.health = 0
        end
    end
    def meditate
        @health = 200
    end
    def how_many
        @@count
    end
end

lastsamurai = Samurai.new
firstsamurai = Samurai.new
lastsamurai.death_blow(firstsamurai)
puts firstsamurai.health
firstsamurai.meditate
puts firstsamurai.health
puts firstsamurai.how_many