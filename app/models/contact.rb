class Contact < ActiveRecord::Base
	belongs_to :customer

	after_save :update_customer_action

	scope :needs_action, lambda{ where(needs_action: true, resolved: false) }


	def update_customer_action

		# if saved as needing action and not resolved, cust. needs action
		if self.needs_action && !self.resolved
			self.customer.update_attribute(:needs_action, true)

		# if needed action at some point and now resolved check if any other action needed
		elsif self.needs_action && self.resolved
			self.customer.update_attribute(:needs_action, !Contact.needs_action.empty?)

		# If never needed action no need to check, could not affect customer
		end
	end
		

end
