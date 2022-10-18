require 'open-uri'
require 'json'

# cleaning database
Movie.destroy_all

# using API to seed database
url = 'http://tmdb.lewagon.com/movie/top_rated'

20.times do |i|
  movies = JSON.parse(URI.open("#{url}?page=#{i + 1}").read)['results']
  movies.each do |movie|
    base_poster_url = 'https://image.tmdb.org/t/p/original'
    Movie.create(
      title: movie['title'],
      overview: movie['overview'],
      poster_url: "#{base_poster_url}#{movie['backdrop_path']}",
      rating: movie['vote_average']
    )
  end
end
