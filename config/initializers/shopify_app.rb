ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "ef72b582708561aa4fc83094e1003b86"
  config.secret = "fdc848113ac3f47134cfc7018ef702c3"
  config.scope = "read_orders, write_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
