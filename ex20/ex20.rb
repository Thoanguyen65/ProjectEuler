=begin 
n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
=end
#find n!= ?
def find_n!(n)
  n_i = 1
  (1..n).each do | i|
	n_i *= i	
  end
  return n_i
end
#find sum of the degits in the number n!
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

# 100!
result = sum_of_n!(100)
puts "answer: #{result}"



