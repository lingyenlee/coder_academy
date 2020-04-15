class ExamplesController < ApplicationController

    def home
@user = "home_user"
    end

    def about 
        @user = "about_user"
    end

end