class LanguagesController < ApplicationController
	def index
	end

	def show
		@language = Language.find(params[:id])
		@queries = @language.queries.order(created_at: :desc)
	end
end
