# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = [{"name":"Xenx K1 Sound Bar -Bt Speaker", "price":2999.0, "upc": "8901396379300"}, {"name":"Oneplus Nord 12/256gb", "price":27999.0, "upc":"8901396387701"}, {"name":"Xenx M3 Bt Spreaker", "price":1999.0,"upc":"8901396387909"}, {"name":"Xenx M3 Bt Spreaker", "price":1999.0,"upc":"8901396387800"}, {"name":"Parachute 50ml Coconut Oil (Flip Top)", "price":20.0,"upc":"8901396397458"}, {"name":"Xenx M2 Bt Spreaker", "price":1999.0,"upc":"8901396399452"}, {"name":"Srt Ts-666 Portable Bt Speaker With Light", "price":999.0,"upc":"8901396398424"}, {"name":"Daawat 25kg Lovely Lachkari Vada Kolam Rice", "price":1999.0,"upc":"8901396397304"}, {"name":"Xenx X-35 Neckband", "price":1999.0,"upc":"8901396399308"}, {"name":"Thumps Up 750ml", "price":40.0, "upc":"8901396398301"}]

products.each do |v|
  Product.create(name: v[:name], price: v[:price], upc: v[:upc])
end