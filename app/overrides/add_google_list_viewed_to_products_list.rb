if Gem.loaded_specs['spree_core'].version >= Gem::Version.create('3.5.0')
  Deface::Override.new(
      virtual_path: 'spree/shared/_products',
      name: 'add_google_list_viewed_to_products_list',
      insert_before: "[data-hook='products_search_results_heading']",
      partial: 'spree/shared/trackers/google/google_view_list',
    )
end
