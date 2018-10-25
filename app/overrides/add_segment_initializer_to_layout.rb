if Gem.loaded_specs['spree_core'].version >= Gem::Version.create('3.5.0')
    Deface::Override.new(
      virtual_path: 'spree/layouts/spree_application',
      name: 'add_segment_initializer_to_layout',
      insert_top: "[data-hook='body']",
      partial: 'spree/shared/trackers/segment/initializer.js',
      original: '26b91c1073b75c93c9e9c89b1f0a6f52ef29a8f9'
    )
end
