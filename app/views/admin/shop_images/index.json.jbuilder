json.array!(@shop_image) do |shop_image|
  json.extract! shop_image, :id
  json.url shop_image_url(shop_image, format: :json)
end