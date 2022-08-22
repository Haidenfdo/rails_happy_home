class AddUsersToPgReview < ActiveRecord::Migration[6.1]
  def change
    add_reference :pg_reviews, :users, null: false, foreign_key: true
  end
end
