class ListingsController < ApplicationController
   
    # given by devise, will direct to login page
    before_action :authenticate_user!
    # only if the listing has amend functions
    before_action :set_user_listing, only: [:edit, :update, :destroy]
    before_action :set_listing, only: [:show]

    def index
        @listings = Listing.all.sorted
    end

    def show
        # don't need anythinh here
        # set_listing
        def show
            # all the environment, information save to the session 
            # eg. how much, the currency...
            session = Stripe::Checkout::Session.create(
                # specify payment method
                payment_method_types: ['card'],
                # email 
                customer_email: current_user.email,
                # specific information what is getting charged
                line_items: [{
                    name: @listing.title,
                    description: @listing.description,
                    # by default, stripe accepts in cents, so multiply by 100
                    amount: @listing.deposit * 100,
                    currency: 'aud',
                    quantity: 1,
                }],
                payment_intent_data: {
                    # metadata about the charge
                    # information used to keep track of payment
                    # to manage responses
                    metadata: {
                        user_id: current_user.id,
                        listing_id: @listing.id
                    }
                },
                # where the users go after stripe, either successful or not
                # rails has the concept of root url eg localhost:3000 -> can be configured
                success_url: "#{root_url}payments/success?userId=#{current_user.id}&listingId=#{@listing.id}",
                # if invalid or cancel
                cancel_url: "#{root_url}listings"
            )
        # session id is equal to the session id created
            @session_id = session.id
        end
    end

    def new
        set_breeds_and_sexes
        @listing = Listing.new
    end

    def create
        # create the listing that belongs to the user
        # when a listing is created, it is attached to the user object
          @listing = current_user.listings.create(listing_params)
        #finish logic for creating a record
        #  @listing = Listing.create(listing_params)
        # if there is any error re-render to a new view
        if @listing.errors.any?
            set_breeds_and_sexes
            render "new"
        else 
            redirect_to listings_path
        end
    end

    def edit
        set_breeds_and_sexes
        set_listing
        # @listing = Listing.new
    end

    def update
        #finsih logic for updating the record
        set_listing
        # @lisiting = Listing.update(params["id"], listing_params)
        updated_listing = @listing.update(listing_params) 
        # check for errors
        if @updated_listing.errors.any?
            set_breeds_and_sexes
            render "edit"
        else
            redirect_to listing_path
        end
    end

    def delete
        set_listing
    end

    def destroy
        Listing.fin(params[:id]).destroy
        redirect_to listings_path
        #finish logic for deleting the record
    end

    private

    # add listing to the id
    def set_listing
        @listing = Listing.find(params[:id])
    end

    # add listing when user is sign in 
    # attached listing that belongs to the user
    # 
    def set_user_listing
        # check if user has the listing
        @listing = current_user.listings.find(params[:id])
# if listing is not associated to the user, redirect to listing
        if @listing == nil
            redirect_to listing_path
        end
    end

    def set_breeds_and_sexes
        @breeds = Breed.all
        @sexes = Listing.sexes.keys
    end

    def listing_params
        params.require(:listing).permit(:title, :description, :breed_id, :sex, :price, :deposit, :city, :state, :date_of_birth, :diet, :picture)
    end

end