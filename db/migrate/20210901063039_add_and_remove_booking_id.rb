class AddAndRemoveBookingId < ActiveRecord::Migration[6.1]
  def change
    def change
      add_column :flights, :booking_id, :integer
    end
  end 
end
