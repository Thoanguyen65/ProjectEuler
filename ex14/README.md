#Problem 14: Longest Collatz sequence

# Đề bài : 
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

#Phân tích đề bài: 
Số nào dưới 1 triệu tạo ra chuỗi dài nhất? với quy luật số tiếp theo như trên. ta sẽ tìm số tiếp theo, mỗi lần tìm được số tiếp theo thì chiều dài chuỗi cộng thêm 1 đơn vị đến khi số tiếp theo tìm được bằng 1.
Để tối ưu bài toán hơn ta để ý thấy rằng nếu số tiếp theo đã tính được chiều dài chuỗi thì ta chỉ cần lấy chiều dài hiện tại cộng với chiều dài chuỗi của số tiếp theo đó. 
ví du: số 5: có chiều dài ví dụ là n. thì số 10 có số tiếp theo là 5 -> 10 có chiều dài chuỗi là n + 1
Để check số đó đã được tính hay chưa thì tôi lưu số và chiều dài tương ứng của số trên 1 Hash. và để kiểm tra một số (key) có tồn tại trong Hash không rất đơn giản. ví dụ cách check của tôi:
```ruby
if arr.include? number #check number existed?
			count_len += arr[number]
			break
		end
```
# Code: 
```ruby
def next_number(n)
	if n.even?
		return n/2
	else
		return 3*n +1
	end
end
arr = Hash.new
arr = [1=>1, 2=>2]
max_len = 2
number = 3 #start 3,4...
max_number = 2
(3..1e6).each do |number|
	start = number
	count_len = 1
	until number == 1
		number = next_number(number)
		# break if number == 1
		count_len += 1
		if arr.include? number #check number existed?
			count_len += arr[number]
			break
		end
	end
	arr = [start => count_len]
	if count_len > max_len
		max_len = count_len
		max_number = start
	end
end
puts "number: #{max_number}"
puts "max length: #{max_len}"
```
#Kết quả:
`
number: 837799
max length: 525
[Finished in 113.6s]
`