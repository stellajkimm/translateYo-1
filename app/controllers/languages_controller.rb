<<<<<<< HEAD
class LanguagesController < ApplicationControllerg
=======
class LanguagesController < ApplicationController
	def index
	end

	def show
		@language = Language.find(params[:id])
		@queries = @language.queries
	end
>>>>>>> 2126637d870f96dcaa5853fb8b806104e9525994
end