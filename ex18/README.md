# problem 18: Find the maximum total from top to bottom of the triangle below

# Đề bài: 
By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

   3
  7 4
 2 4 6
8 5 9 3

That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom of the triangle below:

							   75
							  95 64
							17 47 82
						   18 35 87 10
						  20 04 82 47 65
						19 01 23 75 03 34
					  88 02 77 73 07 63 67
					99 65 04 28 06 16 70 92
				   41 41 26 56 83 40 80 70 33
				  41 48 72 33 47 32 37 16 94 29
				53 71 44 65 25 43 91 52 97 51 14
			   70 11 33 28 77 73 17 78 39 68 17 57
			  91 71 52 38 17 14 91 43 58 50 27 29 48
			63 66 04 68 89 53 67 30 73 16 69 87 40 31
		   04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
# Phân tích: 
di chuyển từ đỉnh của tam giác xuống dưới, giá trị nào lớn nhất cho tổng lớn nhất sẽ được ưu tiên di chuyển xuống.
Để ý sẽ thấy: a[i][j] sẽ cộng với số lớn nhất cạnh nó a[i +1][j] hoặc a[i + 1][j + 1]. ta sẽ xuất phát từ dưới đáy của tam giác cộng lên. gán số trên bằng tổng của số trên với số lớn nhất của 2 số bên dưới. ví dụ: a[13][0] = a[13][0] + max(a[14,0], a[14][1])..tiếp tục quá trình tới khi đi đến đỉnh của tam giác.

#code: 
```ruby
#start with string
str = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"
#convert string to array
arr = []
str.each_line do |line|
    arr << line.split(" ").map! {|x| x.to_i}
end

def max (a,b)
  a>b ? a : b
end
max_length = arr[14].size
(0..max_length - 2).each do |i| 
    (0..max_length - 1).each do |j|
        if arr[max_length - i - 2 ][j] != nil #start a[13][j] -> a[0][0] 
            arr[max_length - i - 2 ][j] =  arr[max_length - i - 2 ][j] + max(arr[max_length -i - 1][j], arr[max_length - i - 1][j + 1])
        end
    end
     
end
puts arr[0][0]
```
#Kết quả
`1074
[Finished in 0.3s]
`