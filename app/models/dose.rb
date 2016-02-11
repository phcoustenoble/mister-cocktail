class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :cocktail, uniqueness: true
  validates :ingredient, uniqueness: true
  validates :ingredient, presence: true
end
