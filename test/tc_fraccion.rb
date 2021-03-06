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
	def test_resta
		assert_equal("1/4", (@f2-(@f3)).to_s)
	end
	def test_multi
		assert_equal("1/8", (@f2*(@f3)).to_s)
	end
	def test_divi
		assert_equal("2/1", (@f2/(@f3)).to_s)
	end
end
