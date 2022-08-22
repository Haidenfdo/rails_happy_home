class AddGenderToAddPgs < ActiveRecord::Migration[6.1]
  def change
    add_column :add_pgs, :gender, :string
  end
end
