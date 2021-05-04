class SessionsController < ApplicationController
  include SessionsHelper
  before_action :logged_in?, only: [:new]

  def create
    @user = User.find_by(name: params[:session][:user])

    if @user
      session[:user_id] = @user.id
      session[:username] = @user.name
      flash[:success] = "Welcome #{@user.name}"
      redirect_to root_path
    else
      flash.now[:danger] = 'Name is not registered'
      render 'new'
    end
  end

  def destroy
    reset_session
    flash[:success] = 'Log out successfully'
    redirect_to root_path
  end
end