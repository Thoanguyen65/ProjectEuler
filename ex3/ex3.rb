# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def Largest(n)
	laPrime = n
	i = 2
	loop { 
		break if n == 0
		if n % i != 0
			i += 1
		else
			laPrime = n
			n /= i
			break if n == 1
		end
	}
	puts "the largest prime #{laPrime}"
end
Largest(13195)
Largest(600851475143)

