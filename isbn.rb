def valid_isbn(isbn)
	isbn.gsub!(" ", "") || isbn.gsub!("-", "") #ignores spaces or dashes and !updates permanently
	isbn.length == 10 #auto if/else statement
end

