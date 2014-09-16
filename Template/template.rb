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

tax = TaxedGood.new
tax.basic_tax(400)

or
tax = ExemptedGood.new
tax.basic_tax(400)
