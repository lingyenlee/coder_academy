class ToysController < ApplicationController

    def index
        @toys = Toy.all
    end

    def show
        @select_toy = Toys.find(params[:Id])
        return @select_toy
    end

    
end