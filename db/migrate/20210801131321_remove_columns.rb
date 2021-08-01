class RemoveColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column(:flights, :start)
    remove_column(:flights, :finish)
  end
end
