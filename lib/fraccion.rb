require_relative 'gcd'
class Fraccion
	attr_reader :x, :y
	def initialize(x,y)
		@x,@y=x,y
	end
	def to_s
		"#{@x}/#{@y}"
	end
	def +(other)
		a=@x*other.y+other.x*@y
		b=@y*other.y
		c=gcd(a,b)
		if c!=1
			a=a/c
			b=b/c
		end
		Fraccion.new(a,b)
	end
end
