class RemoveCompletedFromTodolists < ActiveRecord::Migration[5.1]
  def change
    remove_column :todolists, :completed
  end
end
