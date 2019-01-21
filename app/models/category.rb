class Category < ApplicationRecord
    has_many :dishes
    validates :name, presence: true
    validates_uniqueness_of :name

end
