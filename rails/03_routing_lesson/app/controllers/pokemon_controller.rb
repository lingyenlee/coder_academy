class PokemonController < ApplicationController

    skip_before_action :verify_authenticity_token

    def show
        # render plain: params[:name]
        # render json: "{\"name\": \"#{params[:name]}\", \"type\": \"fire\", \"level\": 40}"
        render json: {"name": params[:name], "type": "fire", "level": 40}
    end


end