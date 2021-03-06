require_relative 'weapon'

class Rules

  CHOICES = ["rock", "scissors", "paper"]

  attr_reader :hierarchy, :choices

  ## initializes using an array of choices
  ## first beats second, etc, last choice beats first choice if 3 items
  ## if more than 3 items each item beats the next n-1/2 items
  ## where n is the total number of items
  def initialize(choices = CHOICES)
    @choices = choices
     .reject(&:empty?)
     .map(&:strip)
     .map(&:to_sym)

    @hierarchy = {}
    make_hierarchy
  end

  def choice_total
    @choices.length
  end

  def vs_total
    choice_total/2
  end

  ## %array.length

  def make_hierarchy

    @choices.each_with_index do |choice, index|
      vs_array = []
      vs_total.times do
        vs_array << @choices[(index + 1) % choice_total]
        index += 1
      end
      @hierarchy[choice] = vs_array
    end
    # array = @choices
    # length = array.length
    # length.times do
    #   c = 1
    #   vs_array = []
    #   vs_total.times do
    #     vs_array << array[c]
    #     c+=1
    #   end
    #   @hierarchy[array[0]] = vs_array
    #   removed = array.shift
    #   array.push(removed)
    # end
  end

  def self.create(choices)
    @rules = Rules.new(choices)
  end

  def self.instance
    @rules
  end

end

# rules = Rules.new(["a","b","c","d","e","f","g"])
#
# p rules.choices
# p rules.hierarchy
