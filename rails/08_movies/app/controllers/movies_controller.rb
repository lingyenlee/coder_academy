class MoviesController < ApplicationController
    # skip_before_action :verify_authenticity_token
    def index
        @movies = Movie.all
    end

    def show
        @movie = Movie.find(params[:id])
    end
    def new

    end

    def create
        new_movie = Movie.create(title: params["title"], duration: params["duration"])
        puts params
        render json: new_movie
        # redirect_to(movies_path)
    end

    def update 
        updated_movie = Movie.update(params["id"], title: params["title"], duration: params["duration"])
    end

    def destroy
        destroyed_movie = Movie.find(params[:id]).destroy
    end
end