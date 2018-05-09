class RemoveIncompleteFromTodolists < ActiveRecord::Migration[5.1]
  def change
    remove_column :todolists, :incomplete
  end
end
