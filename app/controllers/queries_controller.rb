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

  def create
    @query = language.queries.new(query_params)

    if @query.save
      redirect_to language_path(@language)
    else
      render 'languages/show'
    end
  end

  def bing_create
    text_to_translate = params[:query][:english]
    to_text = Language.find(params[:language_id])
    @query = language.queries.new(query_params)
    @query.other = API.call_api(text_to_translate, to_text)
    if @query.save
      redirect_to language_path(@language)
    else
      render 'languages/show'
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


