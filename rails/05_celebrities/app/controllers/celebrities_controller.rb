class CelebritiesController < ApplicationController

    skip_before_action :verify_authenticity_token
    before_action :setup_data
    
    #Show all celebrities
    def index
     @celebrities
        # render json: session[:celebrities]
    end
    
    #Show a single celebrity
    def show
        # @celebrity_to_show = {}
        for celebrity in session[:celebrities]
            if params[:name] == celebrity['name']
               @celebrity = celebrity
            end
        end
    end
    
    #Create a new celebrity
    def create
        
        new_name= params[:name]
        new_notability = params[:notability]
        new_celebrity = {'name': new_name, 'notability': new_notability}
        session[:celebrities].push(new_celebrity)
        render json: new_celebrity
    end
    
    #Update a celebrity
    def update
        notable = params[:notability]
        for celebrity in session[:celebrities]
            if celebrity['name'] == params[:name]
                celebrity[:notability] = notable
                # book[:author] = author
                render json: celebrity
            end
        end
    end
    
    #Remove a celebrity
    def destroy
        session[:celebrities].delete_if {|celebrity| celebrity['name'] == params[:name]}
        render json: session[:celebrities]

    end

    private
    def setup_data
        session[:celebrities] = [
            { "name" => "Lindsay Lohan", "notability"=> "Parent Trap" },
            { "name" => "Adam Sandler", "notability" => "Big Daddy" },
            { "name" => "Rob Schnider", "notability" => "Adam Sandler" }
        ] unless session[:celebrities]
    
        @celebrities = session[:celebrities]
    end
    
end