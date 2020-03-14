require 'rails_helper'

RSpec.describe Dish, type: :model do
  context 'validation tests' do
    it 'ensures dishname presence' do
      dish = Dish.new(name:'Butter naan',sub_category:'Non-Veg',category_id:3).save
      expect(dish).to eq(true)
    end

    it 'ensures Dishname uniqueness' do
      dish = Dish.new(name: 'Butter Chicken',sub_category: 'Non-Veg',category_id:3).save
      dish1 = Dish.new(name: 'Butter Chicken',sub_category: 'Non-Veg',category_id:3).save
      expect(dish1).to eq(false)
    end

    it 'ensures sub-category presence' do
      dish = Dish.new(name: 'Butter Chicken',sub_category: 'Non-Veg',category_id:3).save
      expect(dish).to eq(true)
    end

    it 'ensures category presence' do
      dish = Dish.new(name: 'Butter Chicken',sub_category: 'Non-Veg',category_id:3).save
      expect(dish).to eq(true)
    end
  end
end
