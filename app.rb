require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('./lib/**/*.rb')
require('./lib/band')
require('./lib/venue')
# require('./lib/instruction')
# require('./lib/tag')
require('pg')
require('pry')


get("/") do
  @bands = Band.all()
  erb(:index)
end

get("/band_link") do
  @bands = Band.all()
  erb(:band)
end

post("/bands") do
  temporary_name = params.fetch("name")
  temporary_recipe = Band.create({:name => temporary_name}) # created a new instance of recipe and saved it in the database
  @bands = Band.all()
  erb(:index)
end

get("/venues_link") do
  @venues=Venue.all()
  erb(:venues)
end



post("/venues") do
  venue=params.fetch("venue")
  temporary_venue=Venue.create({:name=>venue})
  @venue=Venue.all()
  erb(:venues)
end

get("/bands/:id") do
  @selected_band = Band.find(params.fetch("id").to_i) #
  @venues = Venue.all()
  # @recipes = Recipe.all()
  erb(:band)
end
