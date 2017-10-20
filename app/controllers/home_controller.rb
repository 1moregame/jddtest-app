class HomeController < ShopifyApp::AuthenticatedController
  def index
    #@products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @products = ShopifyAPI::Product.where(product_type: "Tamale").or(ShopifyAPI::Product.where(product_type: "Gift Packages"))
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end
  def order_metafield
    @order = ShopifyAPI::Order.find(params[:id])
    order.add_metafield(ShopifyAPI::Metafield.new( {
        :namespace => 'packing_list',
        :key => 'time_date',
        :value => "100",
        :value_type => 'integer'
        })) %>

  redirect_to index
  end
end
