puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'chinese' }
sushi_west = { name: 'Sushi west', address: '55 Bleecker St, London E1 6PQ', category: 'italian' }
ice_baby = { name: 'Ice Ice Baby! ', address: '1 First St, London E1 6PQ', category: 'italian' }
mongolese_east = { name: 'Mongolese', address: '45 Mormon St, London E1 6PQ', category: 'chinese' }


[dishoom, pizza_east, sushi_west, ice_baby, mongolese_east].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
