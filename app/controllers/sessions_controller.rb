class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:session][:user])

    if user
      session[:user_id] = user.id
      session[:username] = user.name
      redirect_to root_path
    else
      flash.now[:danger] = 'Name is not registered'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:success] = 'Log out successfully'
    redirect_to root_path
  end
end
