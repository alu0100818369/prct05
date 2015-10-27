require 'lib/fraccion'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
	def setup
		@f1 = Fraccion.new(1,1)
		@f2 = Fraccion.new(1,2)
		@f3 = Fraccion.new(1,4)
	end
	def test_simple
		assert_equal("1/1",  @f1.to_s)
	end
	def test_suma
		assert_equal("3/4", (@f2+(@f3)).to_s)
	end 
end
