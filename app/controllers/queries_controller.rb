
class QueriesController < ApplicationController
	
   def index
    @queries = Query.all
  end

  def show
    @query = Query.find(params[:id])
  end

  def new
    @query = Query.new
  end
  
  def create
    @query = Query.new(params[:query])
    
    if @query.save
      redirect_to queries_path, :notice => "Your query was created successfully."
    else
      render :action => :new
    end
  end
end