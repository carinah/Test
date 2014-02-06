require "sinatra"  #creates params for me
require "sinatra/reloader"
require 'typhoeus' # API library?

# collect input

# figure out the apis

# Call API

# Print API

# # structure

# result["Movies"].each { |a| puts "#{a["name"]} - #{a["date"]}"

# #here I am collecting the name and date of movies returned from OMDAPI
# #how to create hashes?
# #how to search hashes?

# response = Typhoeus.get("www.omdbapi.com", :params => {:name, :date})
# #this should return the name and date

# # correct from lesson: response = Typhoeus.get("www.google.com", :params => {:name => "Tim" })

# puts response.body

# get "/add/:a/:b" do
# 	(params[:a].to_i + params[:b].to_i).to_s
# end


require 'sinatra'
require 'sinatra/reloader'
require 'typhoeus'
require 'json'

get '/' do
  html = %q(
  <html><head><title>Movie Search</title></head><body>
  <h1>Find a Movie!</h1>
  <form accept-charset="UTF-8" action="/result" method="post">
    <label for="movie">Search for:</label>
    <input id="movie" name="movie" type="text" />
    <input name="commit" type="submit" value="Search" /> 
  </form></body></html>
  )

	
end

post '/result' do
  search_str = params[:movie]

  # Make a request to the omdb api here!
	results = JSON.parse(Typhoeus.get("www.omdbapi.com", :params => {:t => "#{title}"}))

  # Modify the html output so that a list of movies is provided.
  html_str = "<html><head><title>Movie Search Results</title></head><body><h1>Movie Results</h1>\n<ul>"
  html_str += "<li>#{search_str}</li></ul></body></html>"

end

get '/poster/:imdb' do |imdb_id|
  # Make another api call here to get the url of the poster.
  html_str = "<html><head><title>Movie Poster</title></head><body><h1>Movie Poster</h1>\n"
  html_str = "<h3>#{imdb_id}</h3>"
  html_str += '<br /><a href="/">New Search</a></body></html>'

end