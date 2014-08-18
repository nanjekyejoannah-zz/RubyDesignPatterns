Template pattern is used when we want to vary the algorithm of a given program.

how to implement it.

class Template

	def template_method
		perform_task1
		perform_task2
		perform_task3
	end

	def perform_task1
		raise 'must be implemented by class'
	end

	def perform_task2

		raise 'must be implemented by class'
	end

	def perform_task3
		raise 'must be implemented by class'
	end
		
		
end

class implemeatation1 < Template
	def perform_task1
		#write implementation here
	end

	def perform_task2

		#write implementation here
	end

	def perform_task3
		#write implementation here
	end
end