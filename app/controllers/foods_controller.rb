class FoodsController < ApplicationController
  def index
  end

  private

  def food_params
    params.require(:food).permit(:name,:fleshness)
  end

  def set_food
    @food = Food.find(params[:id])
  end
end
