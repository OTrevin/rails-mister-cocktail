class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, :cocktail, :ingredient, presence: true, uniqueness: { scope: :ingredient }
  # validates :cocktail, uniqueness: { scope: :ingredient }
end
