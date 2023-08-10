require 'rails_helper'

RSpec.describe Recipe, type: :model do
    it 'should have a name' do
        recipe = Recipe.new
        recipe.name = 'name'
        expect(recipe.name).to eq('name')
    end
    it 'should have a cookingTime' do
        recipe = Recipe.new
        recipe.cookingTime = 'cookingTime'
        expect(recipe.cookingTime).to eq(0)
    end
    it 'should have a preparationTime' do
        recipe = Recipe.new
        recipe.preparationTime = 'preparationTime'
        expect(recipe.preparationTime).to eq(0)
    end
    it 'should have a description' do
      recipe = Recipe.new
        recipe.description = 'description'
        expect(recipe.description).to eq('description')
    end 
   
end