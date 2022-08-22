# frozen_string_literal: true

class CreateAddPgs < ActiveRecord::Migration[6.1]
  def change
    create_table :add_pgs do |t|
      t.string :Pg_name
      t.integer :Monthly_rent
      t.string :Room_type
      t.binary :pg_photo
      t.integer :Deposit
      t.integer :Closing_time
      t.string :Food
      t.boolean :shortlist

      t.timestamps
    end
  end
end
