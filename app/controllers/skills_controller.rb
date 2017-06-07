class SkillsController < ApplicationController
	def create
		@employee = Employee.find(params[:employee_id])
		@skill = @employee.skills.create(skill_params)
		redirect_to employee_path(@employee)
	end

	def destroy
		@employee = Employee.find(params[:employee_id])
		@skill = @employee.skills.find(params[:id])
		@skill.destroy
		redirect_to employee_path(@employee)
	end

	private
		def skill_params
			params.require(:skill).permit(:name)
		end
end
