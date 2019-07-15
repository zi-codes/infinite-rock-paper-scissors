hash = {}


choices = [1,2,3,4,5]

choices.each { |choice|
  test_array = []
  3.times do
    test_array << choice
  end
  hash[choice] = test_array
}

p hash
