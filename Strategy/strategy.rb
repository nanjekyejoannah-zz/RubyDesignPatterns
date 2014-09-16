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


tax = Context.new(TaxedGood.new)
tax.basic_tax(500)




tax = Context.new(ExemptedGood.new)
tax.basic_tax(500)
