Strategy Pattern

The Strategy pattern is similar to the template pattern but for it works on the principle of delegation and provides for run time flexibility since we make our decision by selecting a strategy at runtime. The idea behind the strategy pattern is to define objects (also refered to as strategies by the GoF) with similar methods in our example basic_tax; and have them support exactly the same interface(called a strategy by the GoF).Then we define a class(refered to as the context by the GoF) that uses the strategy to treat the strategies like interchangeable parts(since from the outside they look the same as they support the same interface).we make our decision by selecting one of the objects(strategies) at runtime.

class Good

	def basic_tax(cost)
		raise 'Called abstract method: basic_tax'
	end

	
end

class TaxedGood < Good
	TaxRate = (10.00/100)
	def basic_tax(cost)

		tax = TaxRate * productCost
		return tax.round(2)
	end

end

class ExemptedGood < Good
	def basic_tax(cost)
		tax = 0.0
		return tax
	end

end

class Context
	attr_accessor :good
	def initialize (good)
		@good = good
	end

	def basic_tax(cost)
		puts "#{good.basic_tax(cost)}"
	end
end

You can then pick the strategies at runtime like this

tax = Context.new(TaxedGood.new)
tax.basic_tax(500)


or

tax = Context.new(ExemptedGood.new)
tax.basic_tax(500)
