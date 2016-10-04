def valid_isbn(isbn)
	isbn.gsub!(" ", "") #ignores spaces and !updates permanently
	isbn.length == 10 #auto if/else statement
end

