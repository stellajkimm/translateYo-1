class UsersController < ApplicationController
   before_action :set_user, only: [:show, :edit, :update, :destroy]
   before_filter :authenticate_user!, except: [:new, :create]

  def show
  @user = User.find(params[:id])
  end

end