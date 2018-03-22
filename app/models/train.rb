class Train < ApplicationRecord
	has_one :source_station, class_name: 'Station', foreign_key: 'source_station_code'
end
