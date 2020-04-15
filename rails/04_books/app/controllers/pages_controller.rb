class PagesController < ApplicationController
    def index
        @name = "Mike"  
    end

    def about
        @name = "John"  
    end
end