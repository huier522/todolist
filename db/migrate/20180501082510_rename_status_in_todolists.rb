class RenameStatusInTodolists < ActiveRecord::Migration[5.1]
  def change
    rename_column :todolists, :status, :complete
  end
end
