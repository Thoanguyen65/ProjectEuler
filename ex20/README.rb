# Problem 20: Factorial digit sum

#Đề bài: 
n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!

# Hướng giải
Đầu tiên là tính giá trị n!.
```ruby
def find_n!(n)
  n_i = 1
  (1..n).each do | i|
	n_i *= i	
  end
  return n_i
end
```
Sau đó là tính tổng của các số trong kết quả thu được.cách làm là chuyển kết quả đó sang string => array => sum
code: 
```ruby
def sum_of_n!(n)
  sum = 0
  a = find_n!(n)
  a_str = a.to_s
  len = a_str.size
  a_arr = a_str.split("")
  a_arr.map! { |n| n.to_i  }
  (0..len - 1).each do | i|
    sum += a_arr[i]
  end
  return sum
end
```
# Kết quả: 	648