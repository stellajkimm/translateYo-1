


class QueriesController < ApplicationController
	include translateYo::Commentable  #may need to be rewritten to work

  def index
    @queries = Query.where(language_id: params[:language_id])
  end

  def show
    @query = Query.find(params[:id])
  end

  
end

