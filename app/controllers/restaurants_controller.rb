class RestaurantsController < ApplicationController
  def show
    #@restaurant = RESTAURANTS[params[:id].to_i]
     @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.all
  end
  def edit

  end

  def new
    @restaurant = Restaurant.new
  end


  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

  end

  private

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end

end
