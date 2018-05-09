class RenameCompleteInTodolists < ActiveRecord::Migration[5.1]
  def change
    rename_column :todolists, :complete, :completed
  end
end
