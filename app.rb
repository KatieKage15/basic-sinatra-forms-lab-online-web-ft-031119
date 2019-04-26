require 'sinatra/base'

class App < Sinatra::Base

  get "/newteam" do
    erb :"/newteam/index.html"
  end

  get "/newteam" do
    erb :"/newteam/new.html"
  end

  get "/newteam" do
    erb :newteam
  end

  post "/newteam" do
    team = Team.new(params)
    team.save
    redirect "/workouts/#{workout.id}"
  end
end
