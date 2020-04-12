=begin 
Starting in the top left corner of a 2×2 grid, 
and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
How many such routes are there through a 20×20 grid?
=end

#down : 1, right : 0 => de di duoc tu dinh trai xuong dinh phai ->kích thước hiện tại là 40, để đi tới dích cuối
# phai có 20 so 1 va 20 so 0
# (0..20-1).each do |i|
	
# end
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
