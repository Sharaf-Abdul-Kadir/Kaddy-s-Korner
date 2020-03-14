class Dish < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates_uniqueness_of :name
  validates :sub_category, presence: true
end
