module Admin
	class CustomersController < AdminController
		before_action :get_customer, only: [:show, :update, :edit]

		# GET /customers/
		def index
			# Handle phone characters
			if params[:q] && params[:q][:phone]
				params[:q][:phone].gsub!(/\D/, "")
			end

			@search = Customer.ransack(params[:q])
			@customers = @search.result.order(sort_column("customer") + " " + sort_direction).page(params[:page]).per(params[:per_page])
		end

		# GET /customers/:id
		# GET /customers/:id.json
		def show
			@search_contacts = @customer.contacts.ransack(params[:q])
			@contacts = @search_contacts.result.order(sort_column("contact") + " " + sort_direction).page(params[:page]).per(params[:per_page])
		end

		# POST /customers/new
		def new
			@customer = Customer.new
		end

		def create
			@customer = Customer.new(customer_params)

			respond_to do |format|
				if @customer.save
					format.html { redirect_to admin_customer_path(@customer), notice: "Customer was created successfully" }
					format.json { render action: "show", status: :created, location: @customer }
				else
					format.html { render action: "new", error: "Customer could not be created. " + @customer.errors.first[1].to_s }
					format.json { render json: @customer.errors, status: :unprocessable_entity }
				end
			end
		end

		# GET /customers/1/edit
		def edit
		end

		# PUT/PATCH /customers/1/
		def update
			respond_to do |format|
				if @customer.update(customer_params)
					format.html { redirect_to admin_customer_path(@customer), notice: "Customer was updated successfully" }
					format.json { render action: "show", status: :updated, location: @customer }
				else
					format.html { render action: "edit", error: "Customer could not be updated. " + @customer.errors.first[1].to_s }
					format.json { render json: @customer.errors, status: :unprocessable_entity }
				end
			end
		end

		private

		def customer_params
			params.require(:customer).permit(:first_name, :last_name, :email, :phone, :notes, :vehicle, :in_quickbooks)
		end

		def get_customer 
			@customer = Customer.find(params[:id])
		end
	end
end
