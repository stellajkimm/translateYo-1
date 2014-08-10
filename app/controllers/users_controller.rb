class UsersController < ApplicationController

  def show
    @user = User.find(21)
  end

end