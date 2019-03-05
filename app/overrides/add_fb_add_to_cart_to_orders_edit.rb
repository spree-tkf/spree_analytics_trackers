if Gem.loaded_specs['spree_core'].version >= Gem::Version.create('3.5.0')
  Deface::Override.new(
    virtual_path: 'spree/orders/edit',
    name: 'add_fb_add_to_cart_to_orders_edit',
    insert_top: '[data-hook="cart_container"]',
    partial: 'spree/shared/trackers/facebook/fb_add_to_cart',
    disabled: false
  )
end
