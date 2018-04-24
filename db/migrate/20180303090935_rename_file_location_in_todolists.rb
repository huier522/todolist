class RenameFileLocationInTodolists < ActiveRecord::Migration[5.1]
  def change
    rename_column :todolists, :location, :file_location
  end
end
