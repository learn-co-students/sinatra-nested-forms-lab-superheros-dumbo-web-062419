require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }




    get '/' do

      erb :super_hero
    end

    post '/teams' do
      #  binding.pry
       @team = Team.new(params)

       params[:team][:members].each do |member|
         Superhero.new(member)
       end

       @superheros = Superhero.all
      binding.pry
      erb :team
    end


end
