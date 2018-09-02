json.extract! product, :id, :name, :description, :sku, :vendor, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
