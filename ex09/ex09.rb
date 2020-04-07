=begin
 A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

#check a, b, c is triplet?
def triplet?(a, b, c)
	if a * a == b * b + c * c
		true
	else
		false
	end
end
#find a, b, c
#know sum = a + b + c
def product_abc(sum)
  (1..sum).each do | b|
	(1..sum).each do | c|
	  a = sum - b - c
	  if triplet?(a, b, c)
	  	puts "a,b,c = [#{a}, #{b}, #{c}]"
		puts "abc: #{(a * b * c)}"
		break
	  end
	end
  end
end

product_abc(1000)
