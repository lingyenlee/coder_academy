class RedirectController < ApplicationController

    skip_before_action :verify_authenticity_token
    def redirectfrom
        # redirect_to redirectedto_path
    end

    def redirectedto
        render plain: "You were redirected here"
    end
end