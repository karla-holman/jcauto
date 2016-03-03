Ransack.configure do |config|
  config.add_predicate 'date_gtequals',
    arel_predicate: 'gteq',
    formatter: proc { |v| v.to_date },
    type: :string
end