# Create Body Type Taxonomies
make1 = Spree::Make.create :name => "Chrysler"
make2 = Spree::Make.create :name => "Dodge"
make3 = Spree::Make.create :name => "Plymouth"
make4 = Spree::Make.create :name => "Desoto"
make5 = Spree::Make.create :name => "Imperial"

model1 = make1.models.create :name => "300B", :start_year => "1956", :end_year => "1956" 
model2 = make1.models.create :name => "300C", :start_year => "1957", :end_year => "1957"
model3 = make1.models.create :name => "300D", :start_year => "1958", :end_year => "1958"
model4 = make1.models.create :name => "300E", :start_year => "1959", :end_year => "1959"
make1.models.create :name => "300F", :start_year => "1960", :end_year => "1960"
make1.models.create :name => "300G", :start_year => "1961", :end_year => "1961"
make1.models.create :name => "300H", :start_year => "1962", :end_year => "1962"
make1.models.create :name => "300J", :start_year => "1963", :end_year => "1963"
make1.models.create :name => "300K", :start_year => "1964", :end_year => "1964"
make1.models.create :name => "300L", :start_year => "1965", :end_year => "1965"

application1 = Spree::Application.create
application1.make = make1
application1.model = model1

product_application = Spree::ProductApplication.create :application => application1, :start_year => 1956, :end_year => 1956 


