def valid_isbn(isbn)
	# isbn.gsub!(" ", "")
	# isbn.gsub!("-", "")
	isbn.length == 13
end

def removing_spaces(isbn)
	isbn.delete(" ")
end

def removing_dashes(isbn)
	isbn.delete("-")
end



def valid_isbn_13_check_sum?(isbn)
	thirteen_digit_isbn = isbn.chars.map!(&:to_i) #instead of split and map
	sum = 0
	thiteen_digit_isbn.each_with_index do |value, index|
		break if index == 12
		
		if index % 2 == 0 
			sum += value * 1 
 		else 
 			sum += value * 3 
 		end 
end

	checksum = sum % 10 
 	checksum1 = (10 - checksum) 
 	end_check_sum = checksum1 % 10 
 	end_check_sum_string = end_check_sum.to_s 
		if end_check_sum_string == isbn[-1]
			true 
		else 
        	false 
    	end
    
end