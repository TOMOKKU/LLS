class FoodsController < ApplicationController
  def index
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to("")
    else
      render("")
    end
  end

  private

  def food_params
    params.require(:food).permit(:name,:fleshness,:module_id)
  end

  def set_food
    @food = Food.find(params[:id])
  end
end
