#Problem 7  10001st prime number

>By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
>
>What is the 10 001st prime number?
# Đề bài: 
Đây là nhóm 6 số nguyên tố: 2, 3, 5, 7, 11 và 13. chúng ta có thể thấy số nguyên tố thứ 6 là 13. Vậy thì số nguyên tố thứ 10001 là số nào?

# Giải quyết bài toán
 Đầu tiên là ta phải có một method kiểm tra xem số đó có phải số nguyên tố hay không. để kiểm tra thì cũng giống như các bài toán đã up trước đó. ta sử dụng vòng lặp, kiểm tra xem số đó có chia hết cho số nào khác ngoài 1 và chính nó hay không. nếu chia hết thì suy ra đó không phai số nguyên tố và ngược lại. 
 Bước tiếp theo là tìm số nguyên tố thứ 10001. ta sử dụng 1 biến đếm, dùng để đếm vị trí số nguyên tố mỗi lần tìm được. khi nào biến đếm này bằng giá trị với 10001 thì dừng lại.(tôi bắt đầu từ số 3, đếm từ 1, vì 3 là số nguyên tố đầu tiên trong dãy)

 **Code**
```ruby
def check_prime?(n)
  (2..n - 1).each do | i|
    if n % i == 0
      return false
    end
  end
  return true
end
#start: number 3
count_position = 1
number = 1

until count_position == 10001
  number += 2
  if check_prime?(number)
    count_position += 1
  end
end

puts "answer: #{number}"
```
=> kết quả: 
`answer: 104743
[Finished in 58
`
Thời gian chạy khá chậm, nhưng tôi chưa tìm được cách tối ưu.


