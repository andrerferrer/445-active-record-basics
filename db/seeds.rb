require 'faker'

puts "Destroy all the restaurants"
Restaurant.destroy_all

# puts "Create all the restaurants"
# bk = Restaurant.new(name: 'Burger King', address: 'Everywhere', rating: 4)
# mcdonalds = Restaurant.new(name: 'Mac Donalds', address: 'Everywhere', rating: 3)
# pk = Restaurant.new(name: 'Pizza King', address: 'fictional', rating: 3)

# bk.save
# mcdonalds.save
# pk.save

puts 'Creating 100 fake restaurants...'
100.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name + ' ' + Faker::Movies::LordOfTheRings.character,
    address: "#{Faker::Movies::LordOfTheRings.location}",
    rating:  rand(0..5)
  )
  restaurant.save!
end
puts 'Finished!'

puts "We're done! Good to go!
Please have a beer

.~~~~.
i====i_
|cccc|_)
|cccc|  
`-==-'

"
