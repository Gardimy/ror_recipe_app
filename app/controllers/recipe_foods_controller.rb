class RecipeFoodsController < ApplicationController
  before_action :set_recipe_food, only: [:show, :edit, :update, :destroy]

  def index
    @recipe_foods = RecipeFood.all
  end

  def show
  end

  def new
    @recipe_food = RecipeFood.new
  end

  def create
    @recipe_food = RecipeFood.new(recipe_food_params)
    if @recipe_food.save
      redirect_to @recipe_food, notice: 'RecipeFood was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @recipe_food.update(recipe_food_params)
      redirect_to @recipe_food, notice: 'RecipeFood was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @recipe_food.destroy
    redirect_to recipe_foods_url, notice: 'RecipeFood was successfully destroyed.'
  end

  private

  def set_recipe_food
    @recipe_food = RecipeFood.find(params[:id])
  end

  def recipe_food_params
    params.require(:recipe_food).permit(:recipe_id, :food_id, :quantity)
  end
end
