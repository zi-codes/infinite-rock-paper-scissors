require_relative 'rules'

class Weapon

  attr_reader :name

  def initialize(name, rules = Rules.instance)
    @name = name.to_sym
    @hierarchy = rules.hierarchy

  end

  def beats(other)
    @hierarchy[name].include? other.name
  end

end

# Rules.new("a,b,c")
# #
# # rock = Weapon.new("rock")
# #
# # paper = Weapon.new("paper")
# #
# # scissors = Weapon.new("scissors")
# #
# # p rock.beats(scissors)
