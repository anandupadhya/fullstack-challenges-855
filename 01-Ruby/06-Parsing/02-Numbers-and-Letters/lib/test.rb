grid = ["A", "B", "Z", "O", "O", "O"]
attempt = "zoo"
p letters = attempt.upcase.chars #["Z", "O", "O"]


[0, 1, 2].all? { |element| element < 3 } # => true
# Conditions:
# 1) Each letter in the word must be in the grid
# 2) There must be at least two "O" in the grid

# how many times does that letter appear in the word
# how many times does that letter appear in the grid
p letters.all? { |letter| letters.count(letter) <= grid.count(letter)}
