# Problem 19: How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)

# Đề bài: 
You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

# Phân tích: 
Tôi sử dụng những hàm ứng dụng đã được tạo trong ruby để thực hiện nó. Đầu tiên sẽ có biến y (là biến năm, chạy từ 1901 - 2000). tiếp theo là biến m (month chạy từ : 1-12). Tiếp theo tôi cung cấp ngày bắt đầu, và kiểm tra xem ngày đó có phải chủ nhật hay không bằng câu lệnh dưới đây:
```ruby 
if Time.new(y,m,1).sunday?
			count += 1
		end
```
#Code: 
```ruby 
count = 0
(1901..2000).each do |y|
	(1..12).each do |m|
		if Time.new(y,m,1).sunday?
			count += 1
		end 
	end	
end
```
#Kết quả: 
`171
[Finished in 3.7s]
`
puts count