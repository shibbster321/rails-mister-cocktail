class CocktailsController < ApplicationController
  before_action :find_cocktail_instance, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail, notice: 'cocktail was successfully updated.'
    else
      render :edit
    end
  end

  def edit
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      @cocktail.save
      redirect_to new_cocktail_dose_path(@cocktail)
    else
      render :new
    end
  end

  private
  def find_cocktail_instance
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :blurb, :photo)
  end
end
