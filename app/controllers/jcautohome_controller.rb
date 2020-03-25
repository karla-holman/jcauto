class JcautohomeController < ApplicationController
	def home
		@title = "Home - JC Auto Restoration, Inc."
		@page = "home"
	end

	def about
		@title = "About - JC Auto Restoration, Inc."
		@page = "about"
		@our_cars = Car.where(our_car: true)
	end

	def timeline
		@title = "Timeline - JC Auto Restoration, Inc."
		@page = "about"
	end

	def gallery
		@title = "Gallery - JC Auto Restoration, Inc."
		@page = "gallery"
		@current_projects = Car.where("our_car = ? AND current = ?", false, true).order(completed_date: :desc)
		@past_projects = Car.where("our_car = ? AND current = ?", false, false).order(completed_date: :desc)

		@past_events = Event.where("event_date < ?", Date.today).order("event_date DESC")
	end

	def parts
		@title = "Parts - JC Auto Restoration, Inc."
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
		# @featured_taxon_children = @featured_taxon.children

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
		@new = Spree::Product.where("created_at > ? AND available_on <= ?", Date.today.prev_month, DateTime.now)

		@packages = Spree::Taxonomy.includes(root: :children).where("name=?", "Packages and Assemblies").first
	end

	def services
		@title = "Services - JC Auto Restoration, Inc."
		@page = "services"

		@services = Service.all
	end

	def gauges
		@title = "Gauge Services - JC Auto Restoration, Inc."
		@page = "services"
		render "tutorials/gauges"
	end

	def em
		@title = "Electroluminescence - JC Auto Restoration, Inc."
		@page = "services"
		render "tutorials/em"
	end

	def shipping
		@title = "Shipping Tips - JC Auto Restoration, Inc."
		@page = "services"
		render "tutorials/shipping"
	end

	def community
		@title = "Community - JC Auto Restoration, Inc."
		@page = "community"
	end

	def sale_cars
		@title = "Sale Cars - JC Auto Restoration, Inc."
		@page = "sale-cars"
		@sale_cars = SaleCar.all
	end

	def contact
		@title = "Contact Us - JC Auto Restoration, Inc."
		@page = "contact"

	end

	def privacy_policy
		@title = "Privacy Policy - JC Auto Restoration, Inc."
		@page = "privacy-policy"
	end

	def policies
		@title = "Our Policies - JC Auto Restoration, Inc."
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

	    captcha_passed = !Spree::Captcha::Config[:use_captcha] || verify_recaptcha(private_key: Spree::Captcha::Config[:private_key]) || params[:user][:part_numbers]
	    terms_agreed = !params[:user][:terms] || params[:user][:terms] == "1"
      	if captcha_passed
			message = Spree::ContactMailer.contact_email(params[:user], params[:message], images)
	        message.deliver_later
	        flash[:success] = "Your message has been sent. Thank you!"
	    else
	    	flash[:error] = "We could not verify that you are not a robot. Please try again."
	    end

        if(params[:user][:part_numbers])
        	redirect_to parts_path + "#request"
        elsif(params[:user][:sell_part_numbers])
        	redirect_to parts_path + "#sell"
       	else
       		redirect_to :back
       	end
    end
end
