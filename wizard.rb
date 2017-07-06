require_relative 'human'
class Wizard < Human
    def initialize
        @health = 50
        @intelligence = 25
        super
    end
    def heal
        @health += 10
    end
    def fireball (obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 20
            puts Human
            true
        else
            false
        end
    end
end

bert = Wizard.new
gandalf = Wizard.new
puts gandalf.fireball(bert)
puts bert.health
