class CodesController < ApplicationController

	def create 
		@code = Code.create(usercode: params[:code][:usercode])	
		
		redirect_to home_index_path	
	end
end
