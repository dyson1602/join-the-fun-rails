# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'


Passenger.destroy_all
Taxi.destroy_all
Ride.destroy_all

passenger1 = Passenger.create(name: Faker::Name.name)
passenger2 = Passenger.create(name: Faker::Name.name)
passenger3 = Passenger.create(name: Faker::Name.name)
passenger4 = Passenger.create(name: Faker::Name.name)
passenger5 = Passenger.create(name: Faker::Name.name)

taxi1 = Taxi.create(name: Faker::Name.name)
taxi2 = Taxi.create(name: Faker::Name.name)
taxi3 = Taxi.create(name: Faker::Name.name)
taxi4 = Taxi.create(name: Faker::Name.name)
taxi5 = Taxi.create(name: Faker::Name.name)

Ride.create(taxi_id: taxi1, passenger_id: passenger1)
Ride.create(taxi_id: taxi1, passenger_id: passenger2)
Ride.create(taxi_id: taxi2, passenger_id: passenger2)
Ride.create(taxi_id: taxi2, passenger_id: passenger2)
Ride.create(taxi_id: taxi2, passenger_id: passenger3)
