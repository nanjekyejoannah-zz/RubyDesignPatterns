#base class
class base
	attr_accessor :name, :parent
	def initialize (name)
		@name = name
		@parent = nil
	end
	def some_method
		
	end
end

class Composite  < base
	def initialize (name)
		super(name)
		@subtask = []
		
	end

	def add_subtask (task)
		@subtask << task
		task.parent = self
		
	end
	def delete_subtask (task)
		@subtask.delete(task)
		task.parent = self
		
	end

end

class Highlevelclass < Composite
	def initialize (Highlevelclass)
		super('Highlevelclass')
		add_subtask(childclass1.new)
		add_subtask(childclass2.new)
		add_subtask(childclass3.new)
	end

end

class childclass1 < base
	def initialize 
		super('childtask1')
		
	end
end
class childclass2 < base
	def initialize 
		super('childtask2')
		
	end
end

class childclass3 < base
	def initialize 
		super('childtask3')
		
	end
end