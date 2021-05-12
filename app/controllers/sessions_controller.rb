class SessionsController < ApplicationController
  include SessionsHelper
  before_action :logged_in?, only: [:new]

  def new; end

  def create
    @user = User.find_by(name: params[:session][:user])

    if @user
      session[:user_id] = @user.id
      session[:username] = @user.name
      flash[:notice] = "Welcome #{@user.name}"
      redirect_to root_path
    else
      flash.now[:notice] = 'User is not registered'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    reset_session
    flash[:notice] = 'Log out successfully'
    redirect_to root_path
  end
end
