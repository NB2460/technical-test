class Api::V1::ListingsController < Api::V1::BaseController
  def index
    @listings = Listing.all
  end

  def show
  end

  def update
    @listing.update(listing_params)
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.save
  end

  def destroy
    @listing.destroy
  end

  private

  def listing_params
    params.require(:listing).permit(:rooms_number)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
