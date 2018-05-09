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
    name:         'Café des Arts',
    address:      '138 Cours Victor Hugo, 33000 Bordeaux',
    phone_number: '05 56 91 78 46',
    category:     'french'
  },
  {
    name:         'Fufu Ramen',
    address:      '37 Rue Saint-Rémi, 33000 Bordeaux',
    phone_number: '05 56 52 10 29',
    category:     'japanese'
  },
  {
    name:         'Yako',
    address:      '34 Rue Lafaurie Monbadon, 33000 Bordeaux',
    phone_number: '05 56 81 72 39',
    category:     'japanese'
  },
  {
    name:         'Pizzeria Peppone',
    address:      '31 Cours Georges Clemenceau, 33000 Bordeaux',
    phone_number: '05 56 44 91 05',
    category:     'italian'
  },
  {
    name:         'Au Bistrot',
    address:      '51, rue du Hamel, 33800 Bordeaux',
    phone_number: '06 63 54 21 14',
    category:     'french'
  },
  {
    name:         'Seang Thai',
    address:      '26 Rue Saint-Rémi, 33000 Bordeaux',
    phone_number: '05 56 44 29 78',
    category:     'chinese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'



