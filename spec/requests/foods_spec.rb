require 'rails_helper'

RSpec.describe "Foods", type: :request do
  describe "GET /foods" do
    include Devise::Test::IntegrationHelpers
    before(:each) do
      @user = User.create(name: 'Ricky', email: 'rickymormor1@gmail.com', password: 'password')
      @food = Food.create(name: 'Pizza', measurement_unit: 'grams', price: 6, user_id: @user.id)
    end
  end
end
