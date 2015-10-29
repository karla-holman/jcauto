# Create Body Type Taxonomies
b_body_type = Spree::Taxonomy.create :name => "Body Types"
b_body_type_taxon = Spree::Taxonomy.where(name: b_body_type.name).first
b_body_type_tax = b_body_type_taxon.taxons

b1 = Spree::Taxon.create :name => "A-Body", :parent_id => b_body_type_tax.first.id, :taxonomy_id => b_body_type_tax.first.taxonomy_id

b2 = Spree::Taxon.create :name => "B-Body", :parent_id => b_body_type_tax.first.id, :taxonomy_id => b_body_type_tax.first.taxonomy_id

b3 = Spree::Taxon.create :name => "C-Body", :parent_id => b_body_type_tax.first.id, :taxonomy_id => b_body_type_tax.first.taxonomy_id

b4 = Spree::Taxon.create :name => "D-Body", :parent_id => b_body_type_tax.first.id, :taxonomy_id => b_body_type_tax.first.taxonomy_id

b5 = Spree::Taxon.create :name => "E-Body", :parent_id => b_body_type_tax.first.id, :taxonomy_id => b_body_type_tax.first.taxonomy_id

b6 = Spree::Taxon.create :name => "Long Wheelbase (LWB)", :parent_id => b_body_type_tax.first.id, :taxonomy_id => b_body_type_tax.first.taxonomy_id

b7 = Spree::Taxon.create :name => "Short Wheelbase (SWB)", :parent_id => b_body_type_tax.first.id, :taxonomy_id => b_body_type_tax.first.taxonomy_id
