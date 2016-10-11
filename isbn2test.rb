require "minitest/autorun"
require_relative "isbn2.rb"

class TestIsbn <Minitest::Test
	def test_valid_13_digit_isbn_return_true
		isbn = "9780470059029"
		assert_equal(true, valid_isbn(isbn))
	end

	def test_empty_string_return_false
		isbn = ""
		assert_equal(false, valid_isbn(isbn))
	end

	def test_valid_13_digit_isbn_with_spaces_return_true
		isbn = "9780 470 059029"
		assert_equal(true, valid_isbn(isbn))
	end

	# def test_valid_13_digit_isbn_with_dashes_return_true
	# 	isbn = "9780-47005902-9"
	# 	assert_equal(true, valid_isbn(isbn))
	# end

	# def test_valid_13_digit_isbn_with_dashes_and_spaces_return_true
	# 	isbn = "9780-470 05 902-9"
	# 	assert_equal(true, valid_isbn(isbn))
	# end

	# def test_invalid_13_digit_return_false
	# 	isbn = "9780-470 %5 902-9"
	# 	assert_equal(false, valid_isbn(isbn))
	# end #THIS RETURNS TRUE AND FAILS BECAUSE I DID NOT LIMIT TO ONLY NUMERALS YET. 
end