class CommentsController < ApplicationController
  before_filter :get_parent, :except => [:up_vote, :down_vote]
  # before_filter :authorize_user!, :except => [:up_vote]

  def up_vote
    @comment = Comment.find(params[:id])
    @comment.up_vote += 1
    @comment.save
    redirect_to query_path(@comment.query)
  end

  def down_vote
    @comment = Comment.find(params[:id])
    @comment.down_vote += 1
    @comment.save
    redirect_to query_path(@comment.query)
  end

  def new
    @user_id = session[:user_id]
    @comment = @parent.comments.build(user_id: @user_id)
    #@comment = @parent.comments.build
  end

  def create
    @comment = @parent.comments.build(comment_params)

    if @comment.save
      redirect_to query_path(@comment.query), :notice => 'Thank you for your comment!'
    else
      render :new
    end
  end




  protected

  def get_parent
    @parent = Query.find_by_id(params[:query_id]) if params[:query_id]
    @parent = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    #redirect to queries_path(@query)
    redirect_to query_path(@comment.query) unless defined?(@parent) #Had to change this from queries_path to languages_path
    # query_path(@query)
  end

   def comment_params
    # This says that params[:user] is required, but inside that, only params[:user][:name] and params[:user][:email] are permitted
    # Unpermitted params will be stripped out
    params.require(:comment).permit(:content)
  end


end
