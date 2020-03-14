require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'validation tests' do
    it 'ensures Category_name presence' do
      category = Category.new(name:'Starter').save
      expect(category).to eq(true)
    end

    it 'ensures Category_name uniqueness' do
      category = Category.new(name: 'Starter').save
      category1 = Category.new(name: 'Starter').save
      expect(category1).to eq(false)
    end
  end
end
