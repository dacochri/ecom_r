json.array!(@products) do |product|
  json.extract! product, :id, :category_id, :name, :image, :price, :manufacturer, :quantity, :description
  json.url product_url(product, format: :json)
end
