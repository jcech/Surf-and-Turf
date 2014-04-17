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

  def edit
    @listing = Listing.find(params[:id])
    @photos = Photo.find_by(:id => @listing.id)
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      redirect_to root_url, notice: "Listing Updated!"
    else
      render :back
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to root_url, notice: "Listing deleted!"
  end

private
  def listing_params
    params.require(:listing).permit(:name, :body, :user_id, :price, photos_attributes: [:pic, :id, '_destroy'])
  end

end
