def valid_isbn(isbn)
	isbn.gsub!(" ", "")
	isbn.gsub!("-", "")
	isbn.length == 13
end

# def removing_spaces(isbn)
# 	isbn.gsub(" ", "")
# end

# def removing_dashes(isbn)
# 	isbn.gsub("-", "")
# end