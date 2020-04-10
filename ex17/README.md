# Problem 17: Number letter counts

# Đề bài
If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

# Phân tích: 
đơn giản là ta đếm số kí tự của số đó, rồi cộng lại(đếm bằng tiếng anh).
đầu tiên đếm từ 1-9
`count1 = [0,3, 3, 5, 4, 4, 3, 5, 5, 4] #1-9'
`
sau đó đếm từ 10 đến 20
`count2 = [3,6,6,8,8,7,7,9,8,8] #10-19
`
đếm các số 20, 30, .. 90
`count3 = [0,0,6,6,5,5,5,7,6,6] #0,0,20,30,40..90`
các số từ 20-100 tính theo kiểu: 21: twenty one: twenty + one => number/10 + number % 10
các số từ 100 - 999 thì : cộng thêm hundred nếu là chia hết 100 và cộng thêm and nếu không
còn lại số 1000 thì có số kí tự là 11. vì bài này chỉ tình đến 1000 nên tôi k phát triển tiếp mà chỉ dừng ở 1000

#code
```ruby
def count_letter(n)
	count1 = [0,3, 3, 5, 4, 4, 3, 5, 5, 4] #1-9
	count2 = [3,6,6,8,8,7,7,9,8,8] #10-19
	count3 = [0,0,6,6,5,5,5,7,6,6] #20,30,40..90
	 a= n % 100
	if n < 10
		return count1[n]
	elsif n < 20
		return count2[n % 10]
	elsif n < 100
		return count3[n / 10] + count_letter(n % 10)
	# end
    elsif n < 1000
    	if(n%100 == 0)
			return 7 + count_letter(n/100)
		else
		  return 10 + count_letter(n/100) + count_letter(n%100)
		end
    else
    	return 11
    end
end
sum = 0
(1..1000).each do |n|
	sum += count_letter(n)
end
puts sum 
```

# Kết quả:  
`21124
[Finished in 1.0s]
`


