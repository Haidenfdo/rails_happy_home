# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def current_user
    return @current_user if @current_user

    user_id = session[:user_id]
    @current_user = user_id ? User.find(user_id) : nil
  end
end
