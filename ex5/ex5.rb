
# 2520 is the smallest number that can be divided 
#by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?

def check_divide(number)
	divide = [19, 18, 17, 16, 15, 14, 13, 12, 11]
	divide.each do |i|
		if number % i != 0
			return false
		end
	end
	return true
end

number = 20
start = 1
until check_divide(number)
	number = start*20
	start = start + 1

end
puts "result : #{number}"