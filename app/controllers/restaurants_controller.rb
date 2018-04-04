class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [ :edit, :update, :show, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'created successfully'}
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new}
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    #...
  end

  def show
    #...
  end

  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'updated successfully' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    #...
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'deleted successfully' }
      format.json { head :no_content }
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
