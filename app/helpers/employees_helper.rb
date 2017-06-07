module EmployeesHelper
	def title_case(name)
		name.split(' ').map{ |word| word.capitalize }.join(" ")
	end
end
