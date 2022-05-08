class FoodsController < ApplicationController
  def index
  end

  def new
    @food = Food.new
  end

  def create
    i = 1
    while foods = Food.where(module_id: params[:module_id]).count >= 0
      food = Food.find(i)
      food.destroy
      i += 1
    end
    @food = Food.new(food_params)
    @food.save
  end

  def destroy
    @food.destroy
  end

  private

  def food_params
    params.require(:food).permit(:name,:fleshness,:module_id)
  end

  def set_food
    @food = Food.find(params[:id])
  end
end
