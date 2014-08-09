class CommentsController < ApplicationController
  before_filter :get_parent
  
  def new
    #@user_id=session[:user_id]
    #@comment = @parent.comments.build(user_id: @user_id)
    @comment = @parent.comments.build
  end

  def create
    @comment = @parent.comments.build(comment_params)
    
    if @comment.save
      redirect_to @comment.query, :notice => 'Thank you for your comment!'
    else
      render :new
    end
  end

  protected
  
  def get_parent
    @parent = Query.find_by_id(params[:query_id]) if params[:query_id]
    @parent = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    #redirect to queries_path(@query)
    redirect_to queries_path unless defined?(@parent)
  end

   def comment_params
    # This says that params[:user] is required, but inside that, only params[:user][:name] and params[:user][:email] are permitted
    # Unpermitted params will be stripped out
    params.require(:comment).permit(:content)
  end


end
