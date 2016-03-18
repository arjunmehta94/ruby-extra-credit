# INPUT: an array of strings
# OUTPUT: a nested array (array of array), each subarray is an anagram group

def combine_anagrams(words)
	# YOUR CODE HERE
	# restrict your code to a single function
	return words.group_by { |word| word.downcase.chars.sort.join }.values
end
