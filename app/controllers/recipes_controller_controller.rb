class RecipesControllerController < ApplicationController
	def index
		@search = params[:ingredient] || 'chocolate'
	end
end
