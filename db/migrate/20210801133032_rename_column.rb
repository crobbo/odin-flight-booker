class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :flights, :time, :scheduled_for
  end
end
