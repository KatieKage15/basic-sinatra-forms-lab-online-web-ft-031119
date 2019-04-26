require 'sinatra/base'

class App < Sinatra::Base

  get "/team" do
    erb :"/team/index.html"
  end

  get "/team/new" do
    erb :"/team/new.html"
  end

  get "/team" do
    erb :team
  end

  post "/team" do
    team = Team.new(params)
    team.save
    redirect "/workouts/#{workout.id}"
  end
end
