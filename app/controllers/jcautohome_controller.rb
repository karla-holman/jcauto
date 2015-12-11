class JcautohomeController < ApplicationController
	def home
		@page = "home"
	end

	def about
		@page = "about"
		@our_cars = Car.where(our_car: true)
	end

	def gallery
		@page = "gallery"
		@current_projects = Car.where("our_car = ? AND current = ?", false, true)
		@past_projects = Car.where("our_car = ? AND current = ?", false, false)

		@past_events = Event.where("event_date < ?", Date.today).order("event_date ASC")
	end

	def parts
		@page = "parts"
		
		# Get all taxonomies
		@taxonomies = Spree::Taxonomy.includes(root: :children)


		# Get Part Groups Taxonomy
		@part_groups = @taxonomies.where("name=?", "Part Groups").first

		# Get matching part groups taxon
		@part_groups_taxon = @part_groups.taxons.first
		@part_groups_taxon_children = @part_groups_taxon.children


		# Get Body Types Taxonomy
		@body_types = @taxonomies.where("name=?", "Body Types").first

		# Get matching part groups taxon
		@body_types_taxon = @body_types.taxons.first
		@body_types_taxon_children = @body_types_taxon.children


		# Get Featured Taxonomy
		@featured = @taxonomies.where("name=?", "Featured Products").first

		# Get matching part groups taxon
		@featured_taxon = @featured.taxons.first
		@featured_taxon_children = @featured_taxon.children


		# Get Featured Taxonomy
		# @new = @taxonomies.where("name=?", "New Products").first

		# Get matching part groups taxon
		# @new_taxon = @new.taxons.first
		# @new_taxon_children = @new_taxon.children
		@new = Spree::Product.where("created_at > ?", Date.today.prev_month).limit(24)


	end

	def services
		@page = "services"
	end

	def community
		@page = "community"
	end

	def contact
		@page = "contact"

	end
end
