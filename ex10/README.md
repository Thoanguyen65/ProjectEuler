# Problem 10: Summation of primes

#Đề bài
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.

#Phân tích đề bài
tổng của các số nguyên tố nhỏ hơn 10 là 2 + 3 + 5 + 7 = 17 => tổng của các số nguyên tố nhỏ hơn 2 triệu là ?
Đầu tiên là sử dụng vòng lặp từ 2 đến dưới số đó. trong quá trình lặp thì ktra xem số đó có phải số nguyên tố không.nếu phải thì cộng lại.

#code: 
```ruby
def check_prime?(number)
    if number <= 1
    	false
    elsif number <= 3
    	true
    elsif number % 2 == 0
    	false
    else
    	p_max = Math.sqrt(number).to_i
    	i = 3
  		while i <= p_max
  			if number % i == 0
  				return false
  				break
  			end
  			i += 2
  		end
  		return true
    end
end
#sum of all the primes below number
def sum_of_prime(n)
	sum_of_primes = 0
	(2..n).each do |n|
	  if check_prime?(n)
	    sum_of_primes += n
	  end
	end
	return sum_of_primes
end
```
# kết quả: 
`Answer: 142913828922
