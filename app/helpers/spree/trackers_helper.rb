module Spree
  module TrackersHelper

    def product_for_google(product, optional = {})
      {
        id: product.sku,
        name: product.name,
        price: product.price,
      }.tap do |hash|
      end.merge(optional).to_json.html_safe
    end

  end
end
