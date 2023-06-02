# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
["Dogs as a Pet for a Family",
  "Cats as a Pet for a Family",
  "Rabbits as a Pet for a Family",
  "Birds as a Pet for a Family",
  "Fish as a Pet for a Family",
  "Guinea Pigs as a Pet for a Family",
  "Hamsters as a Pet for a Family",
  "Reptiles as a Pet for a Family",
  "Small Mammals as a Pet for a Family",
  "Exotic Pets as a Pet for a Family"].each do |title|
  Site.create!(title: title)
end
