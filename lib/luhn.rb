module Luhn
	def self.is_valid?(number)
		#solution goes here
		split_num = number.to_s.split('')
		new_arr = []
		if number.to_s.length % 2 == 0
			split_num.each_with_index do |n, i|
				n = n.to_i
				if i % 2 == 0
					n *= 2
					if n >= 10
						n -= 9
					end
					new_arr << n
				else
					new_arr << n
				end
			end
		else
			split_num.each_with_index do |n, i|
				n = n.to_i
				if i % 2 == 1
					n *= 2
					if n >= 10
						n -= 9
					end
					new_arr << n
				else
					new_arr << n
				end
			end
		end
		
		sum = 0
		new_arr.each do |n|
			sum += n
		end
		
		if sum % 10 == 0
			return true
		else
			return false
		end
	end
end