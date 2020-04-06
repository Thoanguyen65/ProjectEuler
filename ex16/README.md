# Problem 16: Power digit sum

# Đề bài
2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?

#Hướng giải quyết.
cũng giống như bài 20, sau khi có kết quả 2^1000. chuyển số này sang dạng string, sau đó tách thành array, rồi cộng lại

#Code: 
```ruby
#idea: int->string->array (int)
def sum_of_2n(n)
  sum = 0
  a = 2**n
  a_str = a.to_s
  len = a_str.size
  a_arr = a_str.split("")
  a_arr.map! { |n| n.to_i  }
  (0..len - 1).each do | i|
    sum += a_arr[i]
  end
  return sum
end
#sum of 2^1000
print sum_of_2n(1000)
```
# Kết quả: 
1366