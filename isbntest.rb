require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn <Minitest::Test
	def test_valid_ten_digit_isbn_return_true
		isbn = "0471958697"
		assert_equal(true, valid_isbn(isbn))
	end

	def test_empty_string_return_false
		isbn = ""
		assert_equal(false, valid_isbn(isbn))
	end

	def test_valid_ten_digit_isbn_with_spaces_return_true
		isbn = "04 719 58697"
		assert_equal(true, valid_isbn(isbn))
	end

	def test_valid_ten_digit_isbn_with_dashes_return_true
		isbn = "04-719-58697"
		assert_equal(true, valid_isbn(isbn))
	end

	def test_valid_ten_digit_with_dashes_and_spaces_returns_true
		isbn = "04-719-58 697"
		assert_equal(true, valid_isbn(isbn))
	end

	def test_invalid_ten_digit_return_false
		isbn = "04-71@-58 697"
		assert_equal(false, valid_isbn(isbn))
	end
#this returned a true....why? AHA! I DIDN'T SAY HAD TO BE NUMERALS UNTIL LATER. NOW IT RETURNS FALSE AND PASSES. 
	def test_invalid_ten_digit_isbn_return_false
		isbn = "0471958699"
		assert_equal(false, valid_isbn(isbn))
	end

	def test_valid_isbn_10_returns_true
		isbn ="2471958699" 
		assert_equal(true, valid_isbn(isbn))
	end

	def test_valid_isbn_with_spaces_and_dashes_return_true
		isbn = "247- 195 -8699"
		assert_equal(true, valid_isbn(isbn))
	end
	def test_valid_isbn_with_an_x_at_the_end_return_true
		isbn = "877195869x"
		assert_equal(true, valid_isbn(isbn))
	end
	def test_valid_isbn_with_cap_x_at_the_end_return_true
		isbn = "877195869X"
		assert_equal(true, valid_isbn(isbn))
	end
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

	def test_valid_13_digit_isbn_with_dashes_return_true
		isbn = "9780-47005902-9"
		assert_equal(true, valid_isbn(isbn))
	end

	def test_valid_13_digit_isbn_with_dashes_and_spaces_return_true
		isbn = "9780-470 05 902-9"
		assert_equal(true, valid_isbn(isbn))
	end

	def test_invalid_13_digit_return_false
		isbn = "9780-4%0 05 902-9"
		assert_equal(false, valid_isbn(isbn))
	end #THIS RETURNS TRUE AND FAILS BECAUSE I DID NOT LIMIT TO ONLY NUMERALS YET. 
end