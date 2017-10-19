class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    # @orders = ShopifyAPI::Order.find(:all, params: { limit: 10 })
    @orders = [1009, 1006].collect {|order_id| Shopify::Order.find(order_id)}
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end
end
