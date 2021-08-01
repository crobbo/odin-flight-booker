# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a1 = Airport.create({id: 1, code: 'SFO'})
a2 = Airport.create({id: 2, code: 'LAX'})
a3 = Airport.create({id: 3, code: 'JFK'})
a4 = Airport.create({id: 4, code: 'ORD'})
a5 = Airport.create({id: 5, code: 'DFW'})
a6 = Airport.create({id: 6, code: 'DEN'})
a7 = Airport.create({id: 7, code: 'LAS'})
a8 = Airport.create({id: 8, code: 'SEA'})
a9 = Airport.create({id: 9, code: 'ATL'})
a10 = Airport.create({id: 10, code: 'CLT'})

f0 = Flight.create({id: 1, scheduled_for: '2021-02-10 06:00:00', duration: 4.5, from_airport_id: 10, to_airport_id: 1 })
f1 = Flight.create({id: 2, scheduled_for: '2021-02-10 09:00:00', duration: 2.5, from_airport_id: 2, to_airport_id: 4 })
f2 = Flight.create({id: 3, scheduled_for: '2021-02-10 12:00:00', duration: 6.5, from_airport_id: 2, to_airport_id: 8 })
f3 = Flight.create({id: 4, scheduled_for: '2021-02-10 17:00:00', duration: 6.5, from_airport_id: 9, to_airport_id: 8 })
f4 = Flight.create({id: 5, scheduled_for: '2021-02-10 19:00:00', duration: 6.5, from_airport_id: 7, to_airport_id: 1 })
f5 = Flight.create({id: 6, scheduled_for: '2021-02-10 20:00:00', duration: 6.5, from_airport_id: 2, to_airport_id: 3 })
f6 = Flight.create({id: 7, scheduled_for: '2021-02-10 22:00:00', duration: 6.5, from_airport_id: 4, to_airport_id: 6 })
f7 = Flight.create({id: 8, scheduled_for: '2021-02-10 22:30:00', duration: 6.5, from_airport_id: 8, to_airport_id: 2 })
f8 = Flight.create({id: 9, scheduled_for: '2021-02-10 23:15:00', duration: 6.5, from_airport_id: 1, to_airport_id: 2 })
f9 = Flight.create({id: 10, scheduled_for: '2021-02-10 23:40:00', duration: 6.5, from_airport_id: 1, to_airport_id: 10 })