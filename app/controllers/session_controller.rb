# frozen_string_literal: true

class SessionController < ApplicationController
  def index; end

  def create
     user = User.find_by(email: user_params['email'])
      if user&.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to '/index'
    else
      flash[:error] = 'Password or email is wrong'
      redirect_to '/login'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:password, :email)
  end
end
