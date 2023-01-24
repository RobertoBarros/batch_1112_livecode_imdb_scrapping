require 'yaml'
require_relative 'scraper'


urls = fetch_top_movie_urls

movies = []
urls.each do |url|
  info = scrape_movie(url)
  movies << info

  # puts "Movie title: #{info[:title]}"
  # puts "Year: #{info[:year]}"
  # puts "Plot: #{info[:storyline]}"
  # puts "-------------------------------------------"
end

File.open('movies.yml', 'wb') do |file|
  file.write(movies.to_yaml)
end
