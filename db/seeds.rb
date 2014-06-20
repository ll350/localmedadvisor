# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

# csv_users_text = File.read('db/DemoUsers.csv')
# csv_users = CSV.parse(csv_users_text, :headers => true)
# csv_users.each do |usee|
#   newuser = User.new(email: usee['email'], password: usee['password'], password_confirmation: usee['password'] )
#   newuser.save(false)
#   #puts usee['email']
#
# end

#puts 'hello jackass'
csv_pros_text = File.read('db/DemoGroupings.csv')
csv_pros = CSV.parse(csv_pros_text, :headers => true)
csv_pros.each do |pro|
  Procedure.create(name: pro['CmsSpecialty'], description: pro['SpecialtyGrouping'])
end

csv_docs_text = File.read('db/DemoDocs.csv')
csv_docs = CSV.parse(csv_docs_text, :headers => true)
csv_docs.each do |pro|
  Provider.create(name: pro['Last Name/Organization Name'], specialty: pro['Provider Type'], city: pro['city'], state: pro['State Code'], zip: pro['Zip Code'])
end
