require 'json'
puts 'Starting to dump schedule data'
file = File.join(Rails.root, 'data', 'schedules.json')
f = File.read(file)
ctr = 0
JSON.parse(f).each do |data|
	s = Schedule.create({
			arrival: data["arrival"] == 'None' ? nil : data["arrival"],
			day: data['day'],
			train_name: data['train_name'],
			station_name: data['station_name'],
			station_code: data['station_code'],
			train_number: data['train_number'],
			departure: data["departure"] == 'None' ? nil : data["departure"]
		})
	ctr += 1
	puts "Schedule Created: #{s.train_name}"
end
puts "Total schedules created: #{ctr}"


