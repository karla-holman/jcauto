module Admin
	class ContactsController < AdminController
		before_action :get_customer

		def show
			@customer = Customer.find(params[:id])
		end

		def new
			@contact = @customer.contacts.new
		end

		def create
			@contact = @customer.contacts.new(contact_params)

			respond_to do |format|
				if @contact.save
					format.html { redirect_to admin_customer_path(@customer), :success => "Contact successfully created." }
					format.json { render action: "show", status: :created, location: @contact }
				else
					format.html { render action: "new", error: "Customer could not be created. " + @customer.errors.first[1].to_s }
					format.json { render json: @contact.errors, status: :unprocessable_entity }
				end
			end
		end

		def resolved
			@contact = Contact.find(params[:id])
			if @contact.resolved
				@contact.update_attribute(:resolved, false)
			else
				@contact.update_attribute(:resolved, true)
			end

			redirect_to admin_customer_path(@customer), :success => "Contact successfully <%= @contact.resolved ? 'resolved' : 'unresolved' %>."
		end

		private

		def get_customer
			@customer = Customer.find(params[:customer_id])
		end

		def contact_params
			params.require(:contact).permit(:date, :jc_employee, :notes, :method, :needs_action, :resolved)
		end

	end
end
