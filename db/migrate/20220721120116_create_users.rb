# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :sname
      t.string :email
      t.integer :pnumber

      t.timestamps
    end
  end
end
