module Authentication
  def current_user
    @user ||= User.find session[:user_id] if session[:user_id]
  end

  def authorize_user!
    redirect_to language_queries_path unless current_user.present?
  end

  def login user
    session[:user_id] = user.id
  end
end