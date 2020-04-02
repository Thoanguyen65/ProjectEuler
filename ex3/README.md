PROBLEM 1: Find largest prime factor

`The prime factors of 13195 are 5, 7, 13 and 29.
 What is the largest prime factor of the number 600851475143 ?
`

## Đề bài: 
13195 là tích của các số nguyên tố 5,7,13,29. Hãy tìm ước số nguyên tố lón nhất của 600851475143



## Phân tích đề bài
khái niệm số nguyên tố: số nguyên tố là số chia hết cho 1 và chính nó. cách đơn giản là chia nó cho các số khác, nếu nó chia hết cho một số nào khác 1 và chính nó thì -> nó không phải số nguyên tố. và ngược lại.
Nếu muốn tìm ước số nguyên tố lớn nhất của một số thì lấy số đó chia lần lượt các số đến khi nào giá trị thương tìm được bằng 0 thì suy ra đó là ước số nguyên tố lớn nhất. 

## Code: 
```ruby
def Largest(n)
	laPrime = n
	i = 2
	loop { 
		break if n == 0
		if n % i != 0
			i += 1
		else
			laPrime = n
			n /= i
			break if n == 1
		end
	}
	puts "the largest prime #{laPrime}"
end
Largest(13195)
Largest(600851475143)
```
kết quả: 
`
the largest prime 29
the largest prime 6857
[Finished in 2.2s]
`



