class ProductReview < ApplicationRecord
    belongs_to :product
    has_many :children, :class_name => "ProductReview", foreign_key: 'parent_id'
    belongs_to :parent, :class_name => "ProductReview", foreign_key: 'parent_id', :optional => true
end
