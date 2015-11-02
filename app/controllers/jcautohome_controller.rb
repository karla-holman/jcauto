class JcautohomeController < ApplicationController
	def home

	end

	def about
		@our_cars = OurCar.all
	end

	def community

	end

	def gallery

	end

	def parts
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
		@new = @taxonomies.where("name=?", "New Products").first

		# Get matching part groups taxon
		@new_taxon = @new.taxons.first
		@new_taxon_children = @new_taxon.children


	end
end
