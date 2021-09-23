class AddAndRemoveBookingId < ActiveRecord::Migration[6.1]
    def change
      remove_column(:passengers, :booking_id)
      # remove_column(:flights, :finish)
      add_column :flights, :booking_id, :integer
    end
end
