class UsersController < ApplicationController
  before_filter :authenticate_user!

  def new

  end

  def create
    current_user
  end

  def show

  end

end
