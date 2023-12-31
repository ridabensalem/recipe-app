class Recipe < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :recipe_foods, dependent: :destroy
  validates :name, presence: true
  validates :cookingTime, presence: true
  validates :preparationTime, presence: true
  validates :description, presence: true

  def total_price
    recipe_foods.sum { |item| item.quantity * item.food.price }
  end
end
