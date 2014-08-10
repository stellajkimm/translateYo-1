
class QueriesController < ApplicationController
	# include translateYo::Commentable  #may need to be rewritten to work
  #before_action :language

  def index
    @queries = language.queries.all
    #.where(language_id: params[:language_id])
  end

  def show
    @query = Query.find(params[:id])
    @language = @query.language
  end

  def new
    @query = language.queries.new
  end

  def create
    @query = language.queries.new(query_params)

    if @query.save
      redirect_to language_queries_path(@language)
    else
      render 'new'
    end
  end

  private

  def query_params
    params.require(:query).permit(:title, :description, :english, :other)
  end

  def language
    @language ||= Language.find(params[:language_id])
  end

end


