class RecipesControllerController < ApplicationController
	def index
		@search = params[:search] || 'chocolate'
	end
end
