class AddPrefferdToAddPgs < ActiveRecord::Migration[6.1]
  def change
    add_column :add_pgs, :preffered, :string
  end
end
