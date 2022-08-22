class CreatePgReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :pg_reviews do |t|
      t.integer :ratings
      t.string :comment

      t.timestamps
    end
  end
end
