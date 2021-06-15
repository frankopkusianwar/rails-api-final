class User < ApplicationRecord
    has_many :products
    has_many :transactions
    has_many :orders
    has_many: carts
end
