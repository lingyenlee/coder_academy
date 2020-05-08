class StudentsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def update
        render plain: params[:id]
    end


end