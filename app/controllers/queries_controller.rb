
class QueriesController < ApplicationController
	# include translateYo::Commentable  #may need to be rewritten to work

  def index
    @queries = Query.where(language_id: params[:language_id])
  end

  def show
    @query = Query.find(params[:id])
  end

  def new
    @query = Query.new
  end


  def create
    @query = Query.new(query_params)
    if @query.save
      redirect_to queries_path
    else
      render 'new'
    end
  end

  private

  def query_params
    params.require(:query).permit(:title, :description, :english, :other)
  end

end


