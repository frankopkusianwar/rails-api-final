class Product < ApplicationRecord
    has_many :product_metas
    has_many :product_reviews
    has_many :product_categories
    has_many: :categories, :through => :product_categories
end
