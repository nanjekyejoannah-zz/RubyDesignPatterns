
require 'observer'

class Employee

	attr_accessor :name, :title
	attr_accessor :salary

	include Observer

	def initialize (name,title,salary)
		@name = name
		@title = title
		@salary = salary
	end

	def salary (=new_salary)
		@salary = new_salary
		changed
		notify_observers(self)
		
	end


end


class Pay_roll

	def update( changed_employee )
		puts("Cut a new check for #{changed_employee.name}!")
		puts("His salary is now #{changed_employee.salary}!")
	end
end



class Tax_man

	def update( changed_employee )
		puts("Send #{changed_employee.name} a new tax bill!")
	end

end

employee = Employee.new(fred,ceo.20000)
payroll = Pay_roll.new
taxman = Tax_man.new
employee.add_observer(payroll)
employee.add_observer(taxman)

employee.salary = 200

