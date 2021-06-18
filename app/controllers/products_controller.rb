class ProductsController < ApplicationController
    def create

        product = Product.new(product_params)
        category = Category.where(title:product.categoryName).pluck(:id)

        if product.save
            ProductCategory.create(product_id:product.id, category_id:category[0])
            render json: product, status: :created
        else
            render json: product.errors, status: :unprocessable_entity
        end
    end
    
    private

    def product_params
      params.require(:product).permit(:categoryName, :title, :metaTitle, :slug, :summary, :type, :sku, :price, :discount, :quantity, :content)
    end
end
