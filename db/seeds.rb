# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Loads seed data out of default dir
default_path = File.join(File.dirname(__FILE__), 'default')

Rake::Task['db:load_dir'].reenable
Rake::Task['db:load_dir'].invoke(default_path)

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

# Featured Products
t_featured = Spree::Taxonomy.create :name => "Featured Products"
t_featured_taxon = Spree::Taxonomy.where(name: t_featured.name).first
t_featured_tax = t_featured_taxon.taxons

# New Products
# t_new = Spree::Taxonomy.create :name => "New Products"
# t_new_taxon = Spree::Taxonomy.where(name: t_new.name).first
# t_new_tax = t_new_taxon.taxons

# Add a test product
# Spree::Product.create :name => "Test Product", :description => "This is the best product.", :available_on => "2015-10-02 00:00:00"