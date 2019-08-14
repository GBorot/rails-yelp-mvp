# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '04 56 71 85 39',
    category:     'chinese',
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '07 81 67 83 91',
    category:      'italian'
  },
  {
    name:         'Adroman',
    address:      '18 Dish St, Perpi E2 7JE',
    phone_number: '04 85 71 19 39',
    category:     'french',
  },
  {
    name:         'Autopile',
    address:      '17 rue High St, Paris 75001',
    phone_number:  '07 67 67 12 91',
    category:      'belgian'
  },
  {
    name:         'Azerty',
    address:      '98 rue Saint Maur, Paris 75010',
    phone_number:  '07 87 67 09 91',
    category:      'italian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
