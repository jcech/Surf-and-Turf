class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      flash[:notice] = "Listing has been posted!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

private
  def listing_params
    params.require(:listing).permit(:name, :body, :user_id, :price)
  end

end
