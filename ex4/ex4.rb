# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
def check_Palindromic(n)

	n1 = n
	remaiderDN = 0
	while n != 0
		remaider = n % 10
		remaiderDN = remaiderDN * 10 + remaider
		n = n / 10
	end
	if remaiderDN == n1
		true
	else 
		false
	end
end

highest_pal = 0
(100..999).each do |i|
	(i..999).each do |j|
		y = i*j
		if checkPalindromic(y) && y > highest_pal
			highest_pal = y
		end
	end
end
puts " Largest palindrome product: #{highest_pal}"



