# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( hammer.js )
Rails.application.config.assets.precompile += %w( image-hover.js )
Rails.application.config.assets.precompile += %w( popover.js )
Rails.application.config.assets.precompile += %w( tooltip.js )
Rails.application.config.assets.precompile += %w( admin.js )
Rails.application.config.assets.precompile += %w( odometer.min.js )
Rails.application.config.assets.precompile += %w( spree/frontend/checkout/shipping_prices.js )
Rails.application.config.assets.precompile += %w( galleria-1.4.2.min.js )
Rails.application.config.assets.precompile += %w( galleria.classic.min.js )
Rails.application.config.assets.precompile += %w( jquery.zoom.min.js )
Rails.application.config.assets.precompile += %w( main.js )
Rails.application.config.assets.precompile += %w( modernizr.js )
# Rails.application.config.assets.precompile += %w( jquery.tmpl.min.js )