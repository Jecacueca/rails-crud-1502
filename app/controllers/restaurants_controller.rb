class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    # render a new form (GET)
    @restaurant = Restaurant.new # Create new, empty instance
  end

  def create
    # Create a new instance of restaurant with info from the form (POST)
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # Specify where to redirect after the save
    redirect_to restaurant_path(@restaurant)
  end

  def edit
    # Render an edit form
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy

    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
