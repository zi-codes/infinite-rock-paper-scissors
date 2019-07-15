require_relative 'weapon'

class Rules

  CHOICES = "rock, scissors, paper"

  attr_reader :hierarchy, :choices

  ## initializes using a string of choices separated by a comma
  ## first beats second, etc, last choice beats first choice
  def initialize(choices = CHOICES)
    @choices = choices.split(",").map(&:strip).map(&:to_sym)
    @hierarchy = {}
    make_hierarchy
  end

  def vs_total
    @choices.length/2
  end

  def make_hierarchy
    array = @choices
    length = array.length
    length.times do
      c = 1
      vs_array = []
      vs_total.times do
        vs_array << array[c]
        c+=1
      end
      @hierarchy[array[0]] = vs_array
      removed = array.shift
      array.push(removed)
    end
  end

  def self.create(choices)
    @rules = Rules.new(choices)
  end

  def self.instance
    @rules
  end

end

rules = Rules.new("a,b,c,d,e,f,g")

p rules.hierarchy
