class FoodsController < ApplicationController
  layout "food"

  def index
    @foods = Food.sorted
  end

  def show
    @food = Food.find_by_id(params[:id])
  end

  def new
     @food = Food.new()
  end

  def create
    new_food = Food.create(food_params)
    flash[:notice] = "Food created successfully!"
    redirect_to(foods_path)
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    @food.update(food_params)
    flash[:notice] = "Food #{@food.name} updated successfully!"
    redirect_to(food_path(@food))
  end

  def delete
    @food = Food.find(params[:id])
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    flash[:notice] = "Food #{@food.name} deleted successfully!"
    redirect_to(foods_path)
  end

  private 
  def food_params
    params.require(:food).permit(:name,:calories)
  end
end
