# the sum of the squares of the first ten natural numbers is,

# 1^2+2^2+...+10^2=385
# The square of the sum of the first ten natural numbers is,

# (1+2+...+10)^2=552=3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025−385=2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum. 
# def find_sum_square_dif(n)
# 	sum_of_squares = n * (n + 1) * (2*n + 1)/6
# 	square_of_sum = (n * (n + 1)) * (n * (n + 1))/4
# 	puts "result = #{(sum_of_squares - square_of_sum).abs} "
# end

# find_sum_square_dif(100)

sum_of_squares, sum, square_of_sum = 0, 0, 0
(1..100).each do | x|
	sum_of_squares = sum_of_squares + x*x
	sum = sum + x
end

square_of_sum = sum*sum

puts "result: #{square_of_sum - sum_of_squares}"


