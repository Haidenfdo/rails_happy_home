# frozen_string_literal: true

class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :email
      t.integer :pnumber
      t.string :message

      t.timestamps
    end
  end
end
