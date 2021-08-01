class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :start
      t.string :finish
      t.datetime :time
      t.integer :duration

      t.timestamps
    end
  end
end
