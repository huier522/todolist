class AddIncompleteInTodolists < ActiveRecord::Migration[5.1]
  def change
    add_column :todolists, :incomplete, :string
  end
end
