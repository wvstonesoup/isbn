require "minitest/autorun"
require_relative "isbn2.rb"

class TestIsbn <Minitest::Test
	def test_valid_13_digit_isbn_return_true
		isbn = "9780470059029"
		assert_equal(true, valid_isbn(isbn))
	end
end