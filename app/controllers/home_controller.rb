# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def about; end

  def boot; end

  def contact; end

  def login; end

  def sign_up; end

  def create
    user = Home.new(user_params)

     if user = User.find_by(email: user_params['email'])
      session[:user_id] = user.id
   user.save
      flash[:notice] = 'Your Message has been sent,We will respond you'
else
  flash[:error] = 'Please Login with your mail to contact with us'
end
    redirect_to '/contact'
end


  def shortlist
    @items = Shortlist.where(user_id: current_user.id)
    p @items
  end

  def shortlist_items
    shortlist_item_id = params[:pg_id]
    is_exists = Shortlist.find_by(pg_id: params[:pg_id], user_id: current_user.id)
    is_exists&.destroy
    shortlist_pgs = Shortlist.create(
      pg_id: shortlist_item_id,
      user_id: current_user.id
    )
    if shortlist_pgs.save
      redirect_to '/pg'
    else
      render plain: 'Failed to store'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :pnumber, :message)
  end
end
