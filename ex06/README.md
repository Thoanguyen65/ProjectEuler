# Problem 6: Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
`The sum of the squares of the first ten natural numbers is,

1^2+2^2+...+10^2=385
The square of the sum of the first ten natural numbers is,

(1+2+...+10)^2=55^2=3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025−385=2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
`

# Đề bài
Tổng bình phương của 10 số đầu tiên là 385. bình phương của tổng 10 số đầu tiên là 3025. tìm sự chênh lệch giữa bỉnh phương của tổng và tổng bình phương của 100 số đầu tiên

# Hướng giải quyết
Tạo một vòng lặp for từ 1 đến 100 và tính tổng của tích, tích của tổng. sau đó tìm hiệu giữa 2 kết quả -> kết quả của bài toán.

Code: 
```ruby

sum_of_squares, sum, square_of_sum = 0, 0, 0
(1..100).each do | x|
	sum_of_squares = sum_of_squares + x*x
	sum = sum + x
end

square_of_sum = sum*sum

puts "result: #{(square_of_sum - sum_of_squares).abs}"
```
=> kết quả: 
`result: 25164150
[Finished in 0.4s]
`
Phương pháp khác: nếu giải theo toán học thì có một vài công thức tính nhanh cho các phép toán trên
	`sum of squares  =  **n = n x (n + 1)/2**
	square of sums 	= **n(n + 1)(2n + 1) / 6 **
`
=> cách tính này sẽ cho ra kết quả nhanh hơn so với phương pháp trên. 
code: 
```ruby
def find_sum_square_dif(n)
	sum_of_squares = n * (n + 1) * (2*n + 1)/6
	square_of_sum = (n * (n + 1)) * (n * (n + 1))/4
	puts "result = #{(sum_of_squares - square_of_sum).abs} "
end

find_sum_square_dif(100)
```
=> kết quả: 
`result = 25164150 
[Finished in 0.3s]
`

==> kết luận: nếu chúng ta có thể vận dụng các phương pháp tính của toán học thì thời gian chạy code sẽ nhanh hơn 
