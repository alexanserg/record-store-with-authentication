# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Album.destroy_all

# manual seeds
artist_list = [
  "Sublime",
  "Grateful Dead",
  "Phish",
  "Pink Floyd",
  "Ed Sheeran",
  "Khalid",
  "Billie Eilish",
  "Justin Bieber",
  "Jonas Brothers"
]
artist_list.each do |artist_name|
  Artist.create( name: artist_name )
end

# faker seeds
50.times do |index|
  Artist.create!(name: Faker::Music.unique.band)
end

p "Created #{Artist.count} artists"

50.times do |index|
  Album.create!(name: Faker::Music.unique.album,
                genre: Faker::Music.genre,
                year: Faker::Number.within(range: 1960..2019))
end

p "Created #{Album.count} albums"
