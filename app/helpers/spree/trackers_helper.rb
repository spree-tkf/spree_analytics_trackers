module Spree
  module TrackersHelper

    def product_for_google(product, optional = {})
      {
        id: product.sku,
        brand: product.property('Brand'),
        name: product.name,
        price: product.price,
      }.tap do |hash|
      end.merge(optional).to_json.html_safe
    end

    def product_for_google_ads(product, optional = {})
      {
        id: product.sku,
      }.tap do |hash|
      end.merge(optional).to_json.html_safe
    end

  end
end
