require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :new
    end

    post '/teams' do 
        @team = Team.new(params[:team])
        params[:team][:heroes].each do |hero| 
            Superhero.new(hero)
        end
        @heroes = Superhero.all
        # binding.pry
        erb :team
    end

end
