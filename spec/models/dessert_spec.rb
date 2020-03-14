require 'rails_helper'

RSpec.describe Dessert, type: :model do
  context 'validation tests' do
    it 'ensures dishname presence' do
      dessert = Dessert.new(dishname: 'strawberry pudding').save
      expect(dessert).to eq(true)
    end

    it 'ensures name presence' do
      dessert = Dessert.new(dishname: 'strawberry pudding').save
      expect(dessert).to eq(true)
    end


  end

end
