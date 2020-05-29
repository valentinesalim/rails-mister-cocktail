class Dose < ApplicationRecord
    INGREDIENT = ["Vodka", "Mojito", "Martini", "Daiquiri", "Negroni", "Blood Mary", "Sazerac", "Manhattan", "Mai-tai", "French Martini" ]
    belongs_to :cocktail
    belongs_to :ingredient
    validates :description, presence: true
    validates :cocktail, uniqueness: { scope: :ingredient }, inclusion: {in: INGREDIENT }
end
