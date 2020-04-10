=begin 
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

def next_number(n)
	if n.even?
		return n/2
	else
		return 3*n +1
	end
end
arr = Hash.new
arr = [1=>1, 2=>2]
max_len = 2
number = 3 #start 3,4...
max_number = 2
(3..1e6).each do |number|
	start = number
	count_len = 1
	until number == 1
		number = next_number(number)
		# break if number == 1
		count_len += 1
		if arr.include? number
			count_len += arr[number]
			break
		end
	end
	arr = [start => count_len]
	if count_len > max_len
		max_len = count_len
		max_number = start
	end
end
puts "number: #{max_number}"
puts "max length: #{max_len}"
