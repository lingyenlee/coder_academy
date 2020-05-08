class PagesController < ApplicationController

    skip_before_action :verify_authenticity_token

    def sayhi
        puts params[:name]
        render(plain: "Hello #{params[:name]}. ")
    end

    def show
        puts params[:id]
    end

    def redirectme 
        redirect_to redirectedto_path
    end

    def redirectedto
        render(plain: "You have been redirected to here")
    end
end
