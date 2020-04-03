
# What is the 10001st prime number

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