require 'rails_helper'

RSpec.describe 'The recipes index page', type: :feature do
  it 'shows all recipes' do
    visit '/recipes'
    expect(page).to have_content('Recipes')
  end
end
