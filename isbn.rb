def valid_isbn(isbn)
	isbn = removing_spaces(isbn)
	isbn = removing_dashes(isbn)
		if valid_isbn_ten_digit_length?(isbn) && valid_isbn_ten_check_sum?(isbn)
			true
		elsif 
			valid_isbn_thirteen_digit_length?(isbn) && valid_isbn_thirteen_check_sum?(isbn)
			true
		else
			false
		end 
end

def valid_isbn_ten_digit_length?(isbn)
	isbn.length == 10
end

def valid_isbn_thirteen_digit_length?(isbn)
	isbn.length == 13
end

def valid_isbn_ten_check_sum?(isbn)
	ten_digit_isbn = isbn.chars.map!(&:to_i) #instead of split and map
	sum = 0
	ten_digit_isbn.each_with_index do |value, index|
		break if index == 9
		sum += (index + 1) * value
	end
	check_sum = sum % 11
		if check_sum == 10
			check_sum = "X"
		end
	check_sum_string = check_sum.to_s
		if check_sum_string == isbn[-1].upcase
			true
		else
			false
		end
end

def valid_isbn_thirteen_check_sum?(isbn)
	thirteen_digit_isbn = isbn.chars.map!(&:to_i) #instead of split and map
	sum = 0
	thirteen_digit_isbn.each_with_index do |value, index|
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

def removing_spaces(isbn)
	isbn.gsub(" ", "")
end

def removing_dashes(isbn)
	isbn.gsub("-", "")
end