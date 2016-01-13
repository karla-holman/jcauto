class CarImage < ActiveRecord::Base
	belongs_to :car

	enum state: [ :no_state, :before, :during, :after ]
end
