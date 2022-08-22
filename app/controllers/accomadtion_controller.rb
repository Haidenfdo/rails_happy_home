# frozen_string_literal: true

class AccomadtionController < ApplicationController
  @@ary = []
  def index
   end

  def create
    accomadtion = AddPg.new(user_params)
    redirect_to '/pg' if accomadtion.save
  end



  def pg
    @user = current_user

    @pgs = if params[:loc].nil?
             AddPg.where(category: "pg")
           else
             AddPg.where(Pglocation: params[:loc])
           end
  end

  def apartments
    @user = current_user

    @apartments = if params[:loc].nil?
             AddPg.where(category: "Apartment")
           else
             AddPg.where(Pglocation: params[:loc])
       
           end
  end
  
  def baby_pg
    if params[:id] != nil
      @@ary.insert(0, params[:id])
    end
    @showpgs = AddPg.find(@@ary[0])

    p "======================================"
    p @@ary[0]

    @asw = @@ary[0]
  end

  def hostel
    @user = current_user

    @hostel = if params[:loc].nil?
             AddPg.where(category: "Hostel")
           else
             AddPg.where(Pglocation: params[:loc])
       
           end
  end

  def home
    @user = current_user

    @home = if params[:loc].nil?
             AddPg.where(category: "Home")
           else
             AddPg.where(Pglocation: params[:loc])
       
           end
  end

  def getResults
    @pgs =AddPg.where(gender: params[:gender])
    @user = current_user
    render "pg"
end

def review_save
  review= PgReview.new(params.require(:review).permit(:ratings, :comment, :users_id, :add_pgs_id))
  if review.save
    redirect_to "/baby_pg"
end
end



  private

  def user_params
    params.require(:accomadtion).permit(:Pg_name, :Monthly_rent, :Room_type, :pg_photo, :Deposit, :Closing_time, :Food, :Pglocation, :gender, :preffered, :category, :map_url)
  end
end
