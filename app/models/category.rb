class Category < ApplicationRecord
    has_many :product_categories
    has_many :products, through: :product_categories
    has_many :children, class_name: "Category"
    belongs_to :parent, class_name: "Category", foreign_key: :parent_id, optional: true
end
