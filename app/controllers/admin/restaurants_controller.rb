class Admin::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def update
    @restaurant.update(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # private

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # def restaurant_params
  #   params.require(:restaurant).permit(:name, :address, :phone, :category)
  # end
end
