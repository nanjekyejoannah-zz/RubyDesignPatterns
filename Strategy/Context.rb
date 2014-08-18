class Context
	attr_accessor :food
	def initialize (food)
		@food = food
	end

	def type
		puts "grilling #{@food.type}"
	end
end