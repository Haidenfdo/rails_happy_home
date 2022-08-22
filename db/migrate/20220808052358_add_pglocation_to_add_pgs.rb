# frozen_string_literal: true

class AddPglocationToAddPgs < ActiveRecord::Migration[6.1]
  def change
    add_column :add_pgs, :Pglocation, :string
  end
end
