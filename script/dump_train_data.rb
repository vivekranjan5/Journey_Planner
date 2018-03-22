require 'json'
puts 'Starting to dump trains data'
file = File.join(Rails.root, 'data', 'trains.json')
f = File.read(file)
ctr = 0
JSON.parse(f)["features"].each do |train_data|
	data = train_data["properties"]
	t = Train.create({
			third_ac: data["third_ac"],
			arrival_time: data["arrival"],
			source_station_code: data["from_station_code"],
			name: data["name"],
			zone: data["zone"],
			chair_car: data["chair_car"],
			first_class: data["first_class"],
			duration_m: data["duration_m"],
			sleeper: data["sleeper"],
			source_station_name: data["source_station_name"],
			number: data["number"],
			departure_time: data["departure"],
			return_train: data["return_train"],
			destination_station_code: data["to_station_code"],
			second_ac: data["second_ac"],
			classes: data["classes"],
			destination_station_name: data["to_station_name"],
			duration_h: data["duration_h"],
			train_type: data["type"],
			first_ac: data["first_ac"],
			distance: data["distance"]
		})
	ctr += 1
	puts "Train Created: #{t.name}"
end
puts "Total trains created: #{ctr}"


