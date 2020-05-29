class CocktailsController < ApplicationController
    before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
    def index
      @cocktails = Cocktail.all
    end
  
    def show
      @cocktail = Cocktail.find(params[:id])
    end
  
    def new
      @cocktail = Cocktail.new
    end
  
    def create
      @cocktail = Cocktail.new(cocktail_params)
  
      if @cocktail.save
        redirect_to cocktails_path(@cocktail)
      else
        render :new
      end
    end

    def update
      if @cocktail.update(cocktail_params)
        redirect_to @cocktail, notice: 'Restaurant was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @cocktail = Cocktail.find(params[:id])
      @cocktail.destroy
      redirect_to cocktails_path, notice: 'Cocktail was successfully deleted.'
    end

    private
  
    def cocktail_params
      params.require(:cocktail).permit(:name, :photo, :photo_cache)
    end

    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end
  end