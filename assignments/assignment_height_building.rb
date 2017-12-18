=begin
You are given heights of consecutive buildings. You are moving from the roof of a building
one building to the roof of next adjacent building. You need to find the maximum number of
consecutive steps he can  put forward such that he gain a increase in altitude.

Input:
The first line contains an integer T, denoting number of test cases. Firts line of each test
case contains an integer N, denoting number of buildings. Second line of the test case
contains N space separated integers, the ith integer denote the hieght of the ith building.

Output:
For each test case, print maximum number of consecutive steps he can put forward such that he
increase in altitude, in separate lines. He initially is on the roof of the first building.

Constraints:
1<=T<=1500
1<=N<=500
1<=Ai<=10000
Example:
Input:
2
5
1 2 2 3 2
4
1 2 3 4
Output:
1
3
=end
require 'pry'
def height(array)
	i = 0
	count = 0
	# binding.pry
	while i < array.length - 1
		# binding.pry
		if array[i] < array[i+1]
			# binding.pry
			count += 1
			i += 1
		elsif array[i] > array[i+1]
			# binding.pry
			count = count - 1
			i += 1
		else
			i += 1
		end
		# return count
	end
	return count
end

puts height([10,20,30,40])
puts height([1,2,2,3,2])



