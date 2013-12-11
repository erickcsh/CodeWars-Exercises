# Accepts a hash of words to an array of translations.
# Returns a hash of words mapped to an array of all possible combinations of translations.
def possibilities(words)
  words.each_key { |key| words[key] = get_combinations(words[key]).sort }
end

def get_combinations(words)
  1.upto(words.size).flat_map { |quantity| get_combination_of_size(words, quantity)}
end

def get_combination_of_size(words, size)
  words.combination(size).to_a.map { |combination| combination.sort }
end
