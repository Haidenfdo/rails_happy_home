# frozen_string_literal: true

class UsersController < ApplicationController
  def index; end

  def create
        user = User.new(user_params)
        if user.save
        session[:user_id] = user.id
        redirect_to '/'
      else
        flash[:error] = user.errors.full_messages.join(',')
        redirect_to '/signup'
      end
  end
  private

  def user_params
    params.require(:users).permit(:fname, :password, :email)
  end
end
