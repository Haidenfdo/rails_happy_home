class AddAddPgsToPgReview < ActiveRecord::Migration[6.1]
  def change
    add_reference :pg_reviews, :add_pgs, null: false, foreign_key: true
  end
end
