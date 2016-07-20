# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Port.create(name: "Inkoo")
Port.create(name: "Kokkola")
Port.create(name: "Pargas")
Port.create(name: "Jakobstad")
Port.create(name: "Pori")
Port.create(name: "Rauma")
Port.create(name: "Antwerp")
Port.create(name: "Husum SWE")
Port.create(name: "Kunda")
Port.create(name: "Koping")
Port.create(name: "Lulea")
Port.create(name: "Moerdjik")
Port.create(name: "Storugns")
Port.create(name: "Szczecin")
Port.create(name: "Verdal")
Port.create(name: "Uusikaupunki")
Port.create(name: "Norrkoping")
Port.create(name: "Landskrona")
Port.create(name: "Klaipeda")
Port.create(name: "Kolding")
Port.create(name: "Rostock")
Port.create(name: "Paldiski")
Port.create(name: "Lubeck")
Port.create(name: "Åhus")
Port.create(name: "Tallinna")
Port.create(name: "Hamina")
Port.create(name: "Skelleftehamn")
Port.create(name: "Piteå")
Port.create(name: "Kaskinen")
Port.create(name: "Lappeenranta")
Port.create(name: "Savonlinna")
Port.create(name: "Korsør")
Port.create(name: "Flensburg")
Port.create(name: "Gdansk")
Port.create(name: "Wismar")
Port.create(name: "Rendsburg")
Port.create(name: "Vierow")
Port.create(name: "Husum DE")
Port.create(name: "Klintehamn")
Port.create(name: "Holmsund")
Port.create(name: "Mariehamn")
Port.create(name: "Grenå")
Port.create(name: "Kalundborg")
Port.create(name: "Köge")
Port.create(name: "Randers")
Port.create(name: "Skive")
Port.create(name: "Ålborg")
Port.create(name: "Århus")

# Cargo Owner Seed
CargoOwner.create(username: "demo", password_digest: "demo", first_name: "demo", last_name: "demo", 
	email_address: "demo@demo.com", phone_number: "56742572812", country: "Demo")
CargoOwner.create(username: "demo1", password_digest: "demo1", first_name: "demo1", last_name: "demo1", 
	email_address: "demo1@demo1.com", phone_number: "5674257281", country: "Demo1")
CargoOwner.create(username: "demo2", password_digest: "demo2", first_name: "demo2", last_name: "demo2", 
	email_address: "demo2@demo2.com", phone_number: "567425712", country: "Demo2")
CargoOwner.create(username: "demo3", password_digest: "demo3", first_name: "demo3", last_name: "demo3", 
	email_address: "demo3@demo3.com", phone_number: "567425712", country: "Demo3")
CargoOwner.create(username: "demo4", password_digest: "demo4", first_name: "demo4", last_name: "demo4", 
	email_address: "demo4@demo4.com", phone_number: "567425712", country: "Demo4")
CargoOwner.create(username: "demo5", password_digest: "demo5", first_name: "demo5", last_name: "demo5", 
	email_address: "demo5@demo5.com", phone_number: "567572812", country: "Demo5")
CargoOwner.create(username: "demo6", password_digest: "demo6", first_name: "demo6", last_name: "demo6", 
	email_address: "demo6@demo6.com", phone_number: "567472812", country: "Demo6")
CargoOwner.create(username: "demo7", password_digest: "demo7", first_name: "demo7", last_name: "demo7", 
	email_address: "demo7@demo7.com", phone_number: "562572812", country: "Demo7")
CargoOwner.create(username: "demo8", password_digest: "demo8", first_name: "demo8", last_name: "demo8", 
	email_address: "demo8@demo8.com", phone_number: "567422812", country: "Demo8")
CargoOwner.create(username: "demo9", password_digest: "demo9", first_name: "demo9", last_name: "demo9", 
	email_address: "demo9@demo9.com", phone_number: "56742812", country: "Demo9")
CargoOwner.create(username: "demo9", password_digest: "demo9", first_name: "demo9", last_name: "demo9", 
	email_address: "demo9@demo9.com", phone_number: "562572812", country: "Demo9")

# Ship Owner Seed
ShipOwner.create(username: "ship", password_digest: "ship", first_name: "ship", last_name: "ship", 
	email_address: "ship@ship.com", phone_number: "56742572812", country: "ship", 
	company_address: "Company ship Address", company_name: "Company ship Name")

ShipOwner.create(username: "ship1", password_digest: "ship1", first_name: "ship1", last_name: "ship1", 
	email_address: "ship1@ship1.com", phone_number: "56742572812", country: "ship1", 
	company_address: "Company ship1 Address", company_name: "Company ship1 Name")

ShipOwner.create(username: "ship2", password_digest: "ship2", first_name: "ship2", last_name: "ship2", 
	email_address: "ship2@ship2.com", phone_number: "56742572812", country: "ship2", 
	company_address: "Company ship2 Address", company_name: "Company ship2 Name")

ShipOwner.create(username: "ship3", password_digest: "ship3", first_name: "ship3", last_name: "ship3", 
	email_address: "ship3@ship3.com", phone_number: "56742572812", country: "ship3", 
	company_address: "Company ship3 Address", company_name: "Company ship3 Name")

ShipOwner.create(username: "ship4", password_digest: "ship4", first_name: "ship4", last_name: "ship4", 
	email_address: "ship4@ship4.com", phone_number: "56742572812", country: "ship4", 
	company_address: "Company ship4 Address", company_name: "Company ship4 Name")

ShipOwner.create(username: "ship5", password_digest: "ship5", first_name: "ship5", last_name: "ship5", 
	email_address: "ship5@ship5.com", phone_number: "56742572812", country: "ship5", 
	company_address: "Company ship5 Address", company_name: "Company ship5 Name")

ShipOwner.create(username: "ship6", password_digest: "ship6", first_name: "ship6", last_name: "ship6", 
	email_address: "ship6@ship6.com", phone_number: "56742572812", country: "ship6", 
	company_address: "Company ship6 Address", company_name: "Company ship6 Name")

ShipOwner.create(username: "ship7", password_digest: "ship7", first_name: "ship7", last_name: "ship7", 
	email_address: "ship7@ship7.com", phone_number: "56742572812", country: "ship7", 
	company_address: "Company ship7 Address", company_name: "Company ship7 Name")

ShipOwner.create(username: "ship8", password_digest: "ship8", first_name: "ship8", last_name: "ship8", 
	email_address: "ship8@ship8.com", phone_number: "56742572812", country: "ship8", 
	company_address: "Company ship8 Address", company_name: "Company ship8 Name")

ShipOwner.create(username: "ship9", password_digest: "ship9", first_name: "ship9", last_name: "ship9", 
	email_address: "ship9@ship9.com", phone_number: "56742572812", country: "ship9", 
	company_address: "Company ship9 Address", company_name: "Company ship9 Name")