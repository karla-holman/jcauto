module Admin
	class CustomersController < AdminController
		before_action :get_customer, only: :show
		before_action :get_contacts, only: :show

		# GET /customers/
		def index
			# Handle phone characters
			if params[:q] && params[:q][:phone]
				params[:q][:phone].gsub!(/D/, "")
			end

			@search = Customer.ransack(params[:q])
			@customers = @search.result.page(params[:page]).per(params[:per_page])
		end

		# GET /customers/:id
		# GET /customers/:id.json
		def show
			
		end

		# POST /customers/new
		def new
			@customer = Customer.new
		end

		def create
			@customer = Customer.new(customer_params)

			byebug
			respond_to do |format|
				if @customer.save
					byebug
					format.html { redirect_to admin_customer_path(@customer), notice: "Customer was created successfully" }
					format.json { render action: "show", status: :created, location: @customer }
				else
					byebug
					format.html { render action: "new", error: "Customer could not be created. " + @customer.errors.first[1].to_s }
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

		def get_contacts
			@contacts = Contact.where(customer: @customer)
		end
	end
end
