# Problem 4: Largest palindrome product
`A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
`
# Đề bài: 
Một số palindromic number được gọi là số đối xứng. số palindrome lớn nhất được tạo bởi 2 chữ số là 9009 = 91 x 99. Tìm số palindrome lớn nhất được tạo bởi 3 chữ số.

# Phân tích:
Số palindrome được gọi là số đối xứng, dù viết xuôi hay viết ngược thì cũng được đọc giống nhau. yêu cầu đề bài: tìm số palindrome lớn nhất được tạo từ 2 số có 3 chứ số. Hiểu đơn giản là lấy 2 số có 3 chữ số nhân với nhau, sau đó kiểm tra tích nhận được có phải là số palindrome hay không.

# Hướng giải quyết
tạo một method để check xem số đó có phải là số palindrome hay không.
giả sử ta có: 11 = 1 * 10 + 1; 101 = 10 * 10 + 1; 1001 = 10 * 10 + 1; 
```ruby
ef check_Palindromic(n)

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
```

sau đó ta nhân 2 số có 3 chữ số với nhau (2 số này chạy từ 100 đến 999) -> check xem tích nhận được có phải số palindrome lớn nhất không.
```ruby
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
```

