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
end