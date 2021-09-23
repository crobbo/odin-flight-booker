class Passenger < ApplicationRecord
  belongs_to :booking
  has_one :flight, through: :booking, source: :flight, foreign_key: :flight_id
end
