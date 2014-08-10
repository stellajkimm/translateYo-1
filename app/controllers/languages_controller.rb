class LanguagesController < ApplicationController
	def index
	end

	def show
		p "?" * 50
		p params

		@language = Language.find(params[:id])
		@queries = @language.queries
		p @queries
	end
end