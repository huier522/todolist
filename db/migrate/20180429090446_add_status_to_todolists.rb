class AddStatusToTodolists < ActiveRecord::Migration[5.1]
  def change
    add_column :todolists, :status, :string
  end
end
