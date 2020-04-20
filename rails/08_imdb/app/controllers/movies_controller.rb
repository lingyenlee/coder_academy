class MoviesController < ApplicationController

    def index
        @movies = Movie.sorted
    end

    def show
        @movie = Movie.find_by_id(params[:id])
    end

    def new
        @movie = Movie.new()
    end

    def create
        new_movie = Movie.create(title: params[:title], duration: params[:duration].to_i)
        redirect_to(movies_path)
    end

    def edit
        @movie = Movie.find_by_id(params[:id])
    end

    def update
        updated_movie = Movie.update(params[:id], title: params[:title], duration: params[:duration])
         redirect_to movie_path(params[:id])
        #    render json: updated_movie
    end

    def delete
        @movie = Movie.find_by_id(params[:id])
    end

    def destroy
        @movie = Movie.find_by_id(params[:id])
        @movie.destroy
        redirect_to(movies_path)
    end
end