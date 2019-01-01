##########################################################
# Generate Prime Numbers In Range								#
# Author: Abdelrahman Farag									#
# Email: abdufarag@yahoo.com							     		#
#Creation Date: 31/12/2018							     			#
# License: MIT												#
##########################################################
a = 0
p "Generating Prime numbers in Range(x,y)"
p"======================================="
p "Enter a Min Range >= 2 : "
loop do
	a = gets.to_i
	if (a >= 2 )
		break
	else
		p "Invalid input, please Enter a Min Value >= 2 : "	
	end
	
end

b = 0
p "Enter a Max Range: "
loop do
	b = gets.to_i
	if (b <= 100000  && b >= a)
		break
	else
		p "Invalid input, please Enter a Max Value >= #{a} : "	
	end
	
end

def chkPrimeInRange(x,y)
	begin
		arr = (x..y).to_a
		m = 0
		prime=[]
		p "Prime List in Range (#{x},#{y}):"
		for i in 0..(arr.count-1)
			m = 0
			for j in 0..i
				if (arr[i]% arr[j] == 0 && j < i )
					m += 1
				end		
			end
			if (m == 0)
				p  arr[i]
				prime << arr[i]
				else
					#~ p "#{arr[i]} is composite."
			end
				
		end
	end
end	

chkPrimeInRange(a,b)
