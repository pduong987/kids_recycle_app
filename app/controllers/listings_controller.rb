class ListingsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:create]

  def index
  end

  def buy

    @listings = Listing.all
  end

  def sell
  end

  def swap

  end

  def free
    @listing = Listing.all
    @listing_free = []
    @listing.each do |item|
      if item.price <= 0 
        @listing_free.push(item)
      end
    end

    @listing = @listing_free
  end

  def create

    # Create a new object which will go into the database
    @listing = Listing.new

    # Set all the values we need on the object
    @listing.name = params[:name]
    @listing.price = params[:price].to_f
    @listing.status = params[:status]
    @listing.description = params[:description]
    
    # Save the object. It only goes into database here!
    if @listing.save

      # Send user to home page, but later to the specific listing e.g /listings/123/show
      redirect_to root_url
    else
      # If something goes wrong, show sell page again
      render 'sell'
    end

  end
end
