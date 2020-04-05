# Problem 9: Special Pythagorean triplet

# Đề bài: 
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

# Phân tích đề bài
Ta có ba số  a, b, c với a + b + c = 1000. => a = 1000 - b- c
cách kiểm tra ba số a, b, c có phải tam giác hay không theo công thức: c^2 = a^2 + b^2 => ta lập một method kiểm tra xem 3 số có phải tam giác không dựa vào công thức trên.

#Code: 
```ruby 
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
```
# Kết quả
`a,b,c = [425, 375, 200]
abc: 31875000
[Finished in 0.5s]
`