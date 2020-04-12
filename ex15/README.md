#Problem 15: How many such routes are there through a 20×20 grid?

# Đề bài: 
Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?

#Phân tích: 
ta thấy rằng, để đi từ điểm trên cùng bên trái tới điểm cuối cùng bên phải thì phải đi hết chiều ngang + chiều dọc (20+20)
=>giả sử right: 1, down: 0 -> có 40 số, gồm số 0,1 trên con đường tới đích (điểm cuối cùng bên phải, hàng cuối cùng).
ta chỉ cần chọn 20 số (có thể là 0,1) trong 40 số và không quan trọng thức tự. mà dựa theo toán học thì ta có một công thức đã làm điều này đó là hệ số nhị thức.
[Binomial_coefficient](https://en.wikipedia.org/wiki/Binomial_coefficient)

#code:
```ruby 
#find n!= ?
def find_n!(n)
  n_i = 1
  (1..n).each do | i|
	n_i *= i	
  end
  return n_i
end

#chon 20 trong 40, thu tu k quan trong, chon sap xep 20 so 1, thi so 0 sẽ dien vao nhung vi tri con lai
#tham khảo: https://en.wikipedia.org/wiki/Binomial_coefficient
result = (find_n!(40)/(find_n!(20)*find_n!(40-20)))
puts "result: #{result}"

```

#Kết quả: 
`result: 137846528820
[Finished in 0.4s]
`
