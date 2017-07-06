require_relative 'human'
class Ninja < Human
    def initialize
        @stealth = 175
        super
    end
    def steal (obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 10
            @health += 10
            true
        else
            false
        end
    end
    def get_away
        @health -= 15
    end
end

gary = Ninja.new
larry = Ninja.new
larry.steal(gary)
puts larry.health
puts gary.health
gary.get_away
puts gary.health