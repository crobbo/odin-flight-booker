class Passenger < ApplicationRecord
  has_one :booking, foreign_key: "booking_id"
  has_one :flight, through: :booking, foreign_key: "id"
end
