=begin 
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end

#check primes

def check_prime?(number)
    if number <= 1
    	false
    elsif number <= 3
    	true
    elsif number % 2 == 0
    	false
    else
    	p_max = Math.sqrt(number).to_i
    	i = 3
  		while i <= p_max
  			if number % i == 0
  				return false
  				break
  			end
  			i += 2
  		end
  		return true
    end
end
#sum of all the primes below number
def sum_of_prime(n)
	sum_of_primes = 0
	(2..n).each do |n|
	  if check_prime?(n)
	    sum_of_primes += n
	  end
	end
	return sum_of_primes
end
result = sum_of_prime(2e6)
puts "Answer: #{result}"