class ReviewController < ApplicationController
  def index
      review=PgReview.new(user_params)
      if review.save
  end
end

  private

  def user_params
    params.require(:review).permit(:ratings, :comment, :users_id, :add_pgs_id)
  end
end
