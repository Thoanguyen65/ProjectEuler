PROBLEM 1: MULTIPLES OF 3 AND 5

ĐỀ BÀI: 
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000

(iệt kê các số tự nhiên nhỏ hơn 10 mà chia hết cho 3 hoặc 5 ta thu được danh sách: 3, 5, 6, 9. Tổng của chúng là 23. Hãy tính tổng của các số chia hết cho 3 hoặc 5 nhỏ hơn 1000.)

CÁCH GIẢI: 
(bước đầu giải)
Tạo một vòng lặp từ 0 đến 999. sau đó tìm ra các số chia hết cho 3 và 5, sau đó cộng dồn lại. vấn đề là những số vừa chia hết cho cả 3 và 5. 
để xét điều kiện này, chúng ta có thể xét vòng lặp từ 0-999, những số nào chia hết cho 15 thì sẽ chia hết cho cả 3 và 5 nhưng nó sẽ chạy chậm hơn là để điều kiện (chia hết cho 3)&& (chia hết cho 5).


```ruby
#if we list all the natural number below 10 that are multiples of 3 or 5
#we get 3,5,6 and 9. the sum of these multiples is 23. 
#find the sum of the multiples of 3 or 5 below 1000
sum = 0;
n = 1000;
for i in 0..999 do 
	
	if (i % 3 == 0) && (i % 5 == 0)
		puts i
		sum += i
	elsif i % 3 == 0
		puts i
		sum +=i
	elsif i % 5 == 0
		puts i
		sum += i
	else next
	end
end
puts "sum = #{sum}"
```
kết quả: 
`
sum = 233168
[Finished in 0.3s]
`



