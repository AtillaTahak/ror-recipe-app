require 'rails_helper'

RSpec.describe 'PublicRecipes', type: :request do
  describe 'GET /public_recipes' do
    before(:each) do
      get public_recipes_path
    end

    it 'returns http success' do
      expect(response).to have_http_status(:found)
    end
  end
end
