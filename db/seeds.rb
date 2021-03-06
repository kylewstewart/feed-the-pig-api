# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Goal.create(
  name: "Vacation",
  amount: 20000.00,
  date: Date.new(2020, 3, 1),
  rate: 0.05,
  saved: 0.00
)

Goal.create(
  name: "New Car",
  amount: 35000.01,
  date: Date.new(2019, 6, 1),
  rate: 0.05,
  saved: 5000.00
)
