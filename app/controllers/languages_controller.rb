class LanguagesController < ApplicationController
	def index
	end

	def show
		@language = Language.find(params[:id])
		@queries = @language.queries
    @query = @language.queries.new
	end
end
