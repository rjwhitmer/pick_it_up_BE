# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Park.destroy_all

Park.create(
    name: "My House",
    latitude: 39.74,
    longitude: -105.06
)

Park.create(
    name: "City Park",
    latitude: 39.7438,
    longitude: -104.9501
)

Park.create(
    name: "Wash Park",
    latitude: 39.7002,
    longitude: -104.9640,
)
Park.create(
    name: "Sloan's Lake Park",
    latitude: 39.7490,
    longitude: -105.0484,
)
Park.create(
    name: "City of Cuernavaca Park",
    latitude: 39.7614,
    longitude: -105.0011,
)
Park.create(
    name: "Berkeley Lake Park",
    latitude: 39.7813,
    longitude: -105.0478,
)