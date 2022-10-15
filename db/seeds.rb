# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require 'json'
# require 'rest-client'
require 'faker'

Movie.destroy_all

# movies = RestClient.get('https://tmdb.lewagon.com/movie/top_rated.json').body.split(",")[1..20]

# movies.each do |id|
#   new_id = id.to_i
#   movie = RestClient.get("https://tmdb.lewagon.com/movie/#{new_id}.json")
#   movie = JSON.parse(movie.body)

#   Movie.create(title: movie["title"], overview: movie["overview"], poster_url: movie["poster_path"], rating: movie["vote_average"])
# end

30.times do
  Movie.create(title: Faker::Movie.title,
               overview:Faker::TvShows::RuPaul.quote,
               poster_url: Faker::Types.rb_string,
               rating: Faker::Number.decimal(l_digits: 2))
end
