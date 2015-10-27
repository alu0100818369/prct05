require 'lib/fraccion'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
	def setup
		@f1 = Fraccion.new(1,1)
	end
	def test_simple
		assert_equal("1/1",  @f1.to_s)
	end
end
