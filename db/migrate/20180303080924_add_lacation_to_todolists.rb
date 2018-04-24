class AddLacationToTodolists < ActiveRecord::Migration[5.1]
  def change
    add_column :todolists, :location, :string
  end
end
