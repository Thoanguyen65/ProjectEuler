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

	