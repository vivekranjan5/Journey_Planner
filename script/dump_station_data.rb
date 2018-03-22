require 'json'
puts 'Starting to dump station data'
file = File.join(Rails.root, 'data', 'stations.json')
f = File.read(file)
ctr = 0
JSON.parse(f)["features"].each do |station_data|
	s = Station.create({
		state: station_data["properties"]["state"],
		code: station_data["properties"]["code"],
		name: station_data["properties"]["name"],
		zone: station_data["properties"]["zone"],
		address: station_data["properties"]["address"]
		})
	ctr += 1
	puts "Station Created: #{s.name}"
end
puts "Total station created: #{ctr}"


