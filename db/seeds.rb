# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
acEntity = AccountingEntity.create(name: "Estudio Apphatie")
company = acEntity.companies.create(name: "Compania NN", verificationDigit: "4", closeDate: Date.today+40 )
afip = Agency.create(name:"AFIP", scope:"Nacional")
arba = Agency.create(name:"ARBA", scope:"Provincial")
=end
require 'yaml'

seed_file = File.join(Rails.root, 'db', 'seed.yml')
config = YAML::load_file(seed_file)


AccountingEntity.create(config["accounting_entities"])
Agency.create(config["agencies"])
Tax.create(config["taxes"])
Expiration.create(config["expirations"])