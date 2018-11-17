if Gem.loaded_specs['spree_core'].version >= Gem::Version.create('3.5.0')
  Deface::Override.new(
    virtual_path: 'spree/products/show',
    name: 'add_google_product_viewed_to_product_show',
    insert_before: "#product-images",
    partial: 'spree/shared/trackers/google/google_product_viewed'
  )
end
