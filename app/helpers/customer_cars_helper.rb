module CustomerCarsHelper
	def new_products(make_id, model_id, year, date)
		prod_app_table = Spree::ProductApplication.table_name
    applications = Spree::Application.table_name
    comp_date = nil
    number_new = 0
    case date
      when "prev_month"
        comp_date = DateTime.now.prev_month
      when "prev_week"
        comp_date = DateTime.now.prev_week
      when "prev_day"
        comp_date = DateTime.now.prev_day
    end

    if make_id && model_id
    	if comp_date
      	number_new = Spree::Product.where("spree_products.created_at >= ? AND spree_products.available_on <= ?", comp_date, DateTime.now).joins(:applications).where("#{prod_app_table}.start_year <= ? AND #{prod_app_table}.end_year >= ?", year, year).where("((#{applications}.make_id=? AND #{applications}.model_id=?) OR (#{applications}.make_id=? AND #{applications}.model_id IS ?) OR (#{applications}.make_id IS ? AND #{applications}.model_id IS ?))", make_id, model_id, make_id, nil, nil, nil).distinct.length
    	else
    		number_new = Spree::Product.where("spree_products.available_on <= ?", DateTime.now).joins(:applications).where("#{prod_app_table}.start_year <= ? AND #{prod_app_table}.end_year >= ?", year, year).where("((#{applications}.make_id=? AND #{applications}.model_id=?) OR (#{applications}.make_id=? AND #{applications}.model_id IS ?) OR (#{applications}.make_id IS ? AND #{applications}.model_id IS ?))", make_id, model_id, make_id, nil, nil, nil).distinct.length
    	end
    elsif make_id
    	if comp_date
      	number_new = Spree::Product.where("spree_products.created_at >= ? AND spree_products.available_on <= ?", comp_date, DateTime.now).joins(:applications).where("#{prod_app_table}.start_year <= ? AND #{prod_app_table}.end_year >= ?", year, year).where("(#{applications}.make_id=? AND #{applications}.model_id IS ?) OR (#{applications}.make_id IS ? AND #{applications}.model_id IS ?)", make_id, nil, nil, nil).distinct.length
      else
      	number_new = Spree::Product.where("spree_products.available_on <= ?", DateTime.now).joins(:applications).where("#{prod_app_table}.start_year <= ? AND #{prod_app_table}.end_year >= ?", year, year).where("(#{applications}.make_id=? AND #{applications}.model_id IS ?) OR (#{applications}.make_id IS ? AND #{applications}.model_id IS ?)", make_id, nil, nil, nil).distinct.length
    	end
    else
    	if comp_date
      	number_new = Spree::Product.where("spree_products.created_at >= ? AND spree_products.available_on <= ?", comp_date, DateTime.now).joins(:applications).where("#{prod_app_table}.start_year <= ? AND #{prod_app_table}.end_year >= ?", year, year).distinct.length
    	else
    		number_new = Spree::Product.where("spree_products.available_on <= ?", DateTime.now).joins(:applications).where("#{prod_app_table}.start_year <= ? AND #{prod_app_table}.end_year >= ?", year, year).distinct.length
    	end
    end

    number_new
  end
end
