# Create Body Type Taxonomies
brand1 = Brand.create :name => "Chrysler"
brand2 = Brand.create :name => "Dodge"
brand3 = Brand.create :name => "Plymouth"
brand4 = Brand.create :name => "Desoto"
brand5 = Brand.create :name => "Imperial"

brand1.models.create :name => "300B"
brand1.models.create :name => "300C"
brand1.models.create :name => "300D"
brand1.models.create :name => "300E"
brand1.models.create :name => "300F"
brand1.models.create :name => "300G"
brand1.models.create :name => "300H"
brand1.models.create :name => "300J"
brand1.models.create :name => "300K"
brand1.models.create :name => "300L"

application1 = Application.create :start_year => 1945, :end_year => 1950
application1.brand = brand1


