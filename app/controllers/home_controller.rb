class HomeController < ShopifyApp::AuthenticatedController
  def index
    #@products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @products = ShopifyAPI::Product.where(product_type: "Tamale").or.where(product_type: "Gift Packages")
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end
end
