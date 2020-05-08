class ListingsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    
    def index
        @listings = Listing.all

        # create a session and store the session on the stripe server
        generate_stripe_session

    end

    def new
        # create a new object for the object to use and store in the instance variable
        @listing = Listing.new
    end

    def create
        # create the listing and attached to the current user
        @listing = current_user.listings.create(listing_params)
        puts @listing.errors.full_messages
        if @listing.errors.any?
            render "new"
        else
            redirect_to listings_path
        end
        
    end

    def show
       
    end

    def edit
        # only allow user who create the listing can edit it
        # look into the listings that the current user has created
       
        if @listing
            render("edit")
        else
            redirect_to listings_path
        end
    end

    def update

        if @listing
            @listing.update(listing_params)
            if @listing.errors.any?
                render("edit")
            else
                redirect_to listings_path
            end
        else
            redirect_to listings_path
        end
      
    end

    def destroy


        if @listing
            @listing.destroy
        end

        redirect_to listings_path
    end

        private
            def listing_params
                params.require(:listing).permit(:title, :description, :price, :picture)
            end
            
            def generate_stripe_session

                session = Stripe::Checkout::Session.create(
                    payment_method_types: ['card'],
                    customer_email: current_user.email,
                    line_items: [{
                    name: "Donate to Musician Marketplace!",
                    currency: 'aud',
                    quantity: 1,
                    amount: 1000
                    }],
                    payment_intent_data: {
                        metadata: {user_id: current_user.id,}
                    },
                        success_url: "#{root_url}pages/donated?userId=#{current_user.id}",
                        cancel_url: "#{root_url}"
                    )
                    
                    @session_id = session.id
            end

            def set_listing
                @listing = current_user.listings.find(params[:id])
            end

end