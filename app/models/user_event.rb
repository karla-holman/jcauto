class UserEvent < ActiveRecord::Base
	belongs_to :user, class_name: Spree.user_class.name
	belongs_to :event
end
