class RestaurantsController < ApplicationController
  def index
    @resturants = resturant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # No need for app/views/restaurants/create.html.erb
    redirect_to restaurant_path(@restaurant)

    if @restaurant.save
      redirect_to @Restuarant, notice: "Restaurant was successfully created."


      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def new
    @restaurantsn = restaurant.new
  end

  def show
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
