class RemoveFileLocationFromTodolists < ActiveRecord::Migration[5.1]
  def change
    remove_column :todolists, :file_location
  end
end
