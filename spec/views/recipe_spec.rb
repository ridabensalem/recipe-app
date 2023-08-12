require 'rails_helper'

RSpec.describe 'The recipes index page', type: :feature do
  it 'renders the recipes index page' do
    visit '/recipes'
    expect(page).to have_content('')
  end
end