class Product < ApplicationRecord
    belongs_to :user
    has_many :product_metas
    has_many :product_reviews
    has_many :order_items
    has_many: cart_items
    has_many: :carts, :through => :cart_items
    has_many :product_categories
    has_many: :categories, :through => :product_categories
end
