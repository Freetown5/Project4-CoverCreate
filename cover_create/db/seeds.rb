# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

basics = Basic.create([
  {yname:"(Your Name)" , ycity:"(Your City, State, and ZipCode)" , yphone:"(Your Phone #)" , yemail:"(Your E-mail)"}
  ]);

companies = Company.create([
  {cname:"(Company Name)" , ccity:"(Company City, State and ZipCode)", cphone:"(Company Phone #)" , cemail:"(Company E-mail)"}
  ]);

contents = Content.create([
  {date:"", POClastname:"(Point of Contact Last Name)", POCfirstname:"(Point of Contact First Name)", POCtitle:"(Point of Contact Title)", reference:"(Name of Reference)", position_info:"(Relavant position info)", skills:"(Relavant Skills)"}
  ])
