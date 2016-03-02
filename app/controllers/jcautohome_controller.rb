class JcautohomeController < ApplicationController
	def home
		@page = "home"
	end

	def about
		@page = "about"
		@our_cars = Car.where(our_car: true)
	end

	def timeline
		@page = "about"
	end

	def gallery
		@page = "gallery"
		@current_projects = Car.where("our_car = ? AND current = ?", false, true).order(completed_date: :desc)
		@past_projects = Car.where("our_car = ? AND current = ?", false, false).order(completed_date: :desc)

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

		# Get promotions
		@promotions = Spree::Promotion.all

		# Get Package Taxonomy
		@package = @taxonomies.where("name=?", "Packages and Assemblies").first

		# Get matching part groups taxon
		@package_taxon = @package.taxons.first
		@package_taxon_children = @package_taxon.products


		# Get Featured Taxonomy
		# @new = @taxonomies.where("name=?", "New Products").first

		# Get matching part groups taxon
		# @new_taxon = @new.taxons.first
		# @new_taxon_children = @new_taxon.children
		@new = Spree::Product.where("created_at > ?", Date.today.prev_month).limit(24)


	end

	def services
		@page = "services"

		@services = Service.all
	end

	def gauges
		@page = "services"
		render "tutorials/gauges"
	end

	def em
		@page = "services"
		render "tutorials/em"
	end

	def shipping
		@page = "services"
		render "tutorials/shipping"
	end

	def community
		@page = "community"
	end

	def sale_cars
		@page = "sale-cars"
		@sale_cars = SaleCar.all
	end

	def contact
		@page = "contact"

	end

	def privacy_policy
		@page = "privacy-policy"
	end

	def policies
		@page = "policies"
	end

	# Allow contact form to generate email
	def submit_contact
		images = []
		if(params["images"])
			# validate less than 5
			if params["images"].length > 5 
				flash[:warning] = "Number of images limited to 5. Only first 5 images will be used."
			end

			# Make an object in your bucket for your upload
	      	s3 = AWS::S3.new
	      	bucket = s3.buckets['jcauto']

			params["images"].each_with_index do |image, index|
				break if index >= 5

				if image.size > 2.megabytes
					flash[:warning] = "#{image.original_filename} is greater than 2MB and was not attached."
		      		next
		      	end

		      	filename = image.original_filename

		      	# sanitize filename (security)
		      	filename.strip.tap do |name|
					# NOTE: File.basename doesn't work right with Windows paths on Unix
					# get only the filename, not the whole path
					name.sub! /\A.*(\\|\/)/, ''
					# Finally, replace all non alphanumeric, underscore
					# or periods with underscore
					name.gsub! /[^\w\.\-]/, '_'
				end

				obj = bucket.objects.create("customer/" + filename, image)
				images << obj.read
			end
	    end

		message = Spree::ContactMailer.contact_email(params[:user], params[:message], images)
        message.deliver_later
        flash[:success] = "Your message has been sent. Thank you!"

        if(params[:user][:part_numbers])
        	redirect_to parts_path + "#sell"
       	else
       		redirect_to :back
       	end
    end
end
