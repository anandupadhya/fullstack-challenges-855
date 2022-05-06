require 'open-uri'
require 'json'

def generate_grid(grid_size)
  grid = []
  grid_size.times { grid << ('A'..'Z').to_a.sample }
  return grid
end

def run_game(attempt, grid, start_time, end_time)
  result = {}
  # determine the time taken
  result[:time] = end_time - start_time

  # contact the api to check if it's a valid word
  url = "https://wagon-dictionary.herokuapp.com/#{attempt}"
  data = URI.open(url).read
  response = JSON.parse(data)

  # determine if the word is in the given grid
  letters = attempt.upcase.chars
  word_in_grid = letters.all? { |letter| letters.count(letter) <= grid.count(letter)}

  word_is_valid = response["found"]
  if word_is_valid && word_in_grid
    result[:score] = attempt.length * 10
    result[:message] = "Well done!"
  elsif word_is_valid && !word_in_grid
    result[:score] = 0
    result[:message] = "It's an English word but it's not in the given grid!"
  else
    result[:score] = 0
    result[:message] = "That's not a valid word"
  end

  return result # time, score, message
end
