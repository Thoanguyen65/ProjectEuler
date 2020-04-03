# Problem 5: Smallest multiple
`2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
`

# Đề bài: 
2050 là số nhỏ nhất có thể chia hết cho các số từ 1 đến 10. hãy tìm số nhở nhất có thể chia hết cho các số từ 1 đến 20?

# Hướng giải quyết
cách đơn giản để thực hiện là tìm số mà chia hết cho các số từ 1-20 bằng vòng lặp. nếu có thể chia hết thì true. nếu không thì false.Đầu tiên là tạo method kiểm tra xem số đó có chia hết hay k?

```ruby
def check_divide(number)
	# divide = [19, 18, 17, 16, 15, 14, 13, 12, 11]
	(1..20).each do |i|
		if number % i != 0
			return false
		end
	end
	return true
end
```
=> Kết quả thu được khi sử dụng phương pháp này
`result : 232792560
[Finished in 10.6s]
`
Nếu để ý thì nếu chia hết cho 18 thì có thể chia hết cho 3, 6, 9. 15 chia hết cho 3, 5, 14: 2, 7,.. nên có thể liệt kê ra một array. 
```ruby
def check_divide(number)
	divide = [19, 18, 17, 16, 15, 14, 13, 12, 11]
	divide.each do |i|
		if number % i != 0
			return false
		end
	end
	return true
end
```
=> kết quả có vẻ tốt hơn
`result : 232792560
[Finished in 4.8s]
`
Bước tiếp theo để tìm được số đó, có thể sử dụng vòng lặp. ở đây tôi sử dụng vòng lặp `until`. vòng lặp sẽ dừng đến khi điều khiện đúng (check_divide(number) trả về true),ngược lại, điều kiện sai thì công việc trong vòng lặp sẽ được thực hiện. Để ý, số chia hết cho 20 thì ít nhất phải cách nhau 20 đơn vị (ví dụ: 20, 40, 60,...thì mới chia hết cho 20) -> các số cách nhau ít nhất 20 đơn vị.
code: 
```ruby 
number = 20
start = 1
until check_divide(number)
	number = start*20
	start = start + 1

end
```
=> tóm lại: sử dụng phương pháp lược đi một vài số chia, sẽ giảm vòng lặp -> thời gian chạy code sẽ nhanh hơn


