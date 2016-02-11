class Ingredient < ActiveRecord::Base
  CATEGORIES = %w(vodka gin tequila rhum)
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :doses
  validates :category, inclusion: {in: CATEGORIES}
end
