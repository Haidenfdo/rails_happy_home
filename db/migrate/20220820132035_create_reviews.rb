class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
