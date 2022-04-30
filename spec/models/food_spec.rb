require 'rails_helper'

RSpec.describe Food, type: :model do
  # create user and food
  before(:each) do
    @user = User.create(name: 'Ricky', email: 'rickymormor1@gmail.com', password: 'password')
    @food = Food.create(name: 'Pizza', measurement_unit: 'grams', price: 6, user_id: @user.id)
  end

  it 'is valid' do
    expect(@food).to be_valid
  end

  it 'is invalid' do
    food = Food.new
    expect(food).to_not be_valid
  end

  it 'is invalid without a name' do
    food = Food.new(name: nil)
    expect(food).to_not be_valid
  end

  it 'is invalid without a measurement_unit' do
    food = Food.new(measurement_unit: nil)
    expect(food).to_not be_valid
  end

  it 'is invalid without a price' do
    food = Food.new(price: nil)
    expect(food).to_not be_valid
  end

  it 'is invalid without a user_id' do
    food = Food.new(user_id: nil)
    expect(food).to_not be_valid
  end

  it ' is valid with a name, measurement_unit, price, and user_id' do
    food = Food.new(name: 'Pizza', measurement_unit: 'grams', price: 6, user_id: @user.id)
    expect(food).to be_valid
  end
end
