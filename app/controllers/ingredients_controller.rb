class IngredientsController < ApplicationController
    def index
        @ingredient = Ingredient.all
    end
    
    def show
        @ingredient = Ingredient.find(params[:id])
    end
    
    def new
        @ingredient = Ingredient.new
    end
    
end
