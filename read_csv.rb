#cording = UTF-8
require 'csv'
require 'json'
all = Array.new
equipments = []

CSV.foreach('table2.csv',headers: true) do |data|
	equipments.push data[1]
	equipments.push data[2]
	equipments.push data[3]
end

newequipments = equipments.compact.uniq
	x = 1
	y = 0

newequipments.each do |neweq|
	h = Hash["id", x, "name", neweq]
	all.push(h)
	x += 1
	y += 1
end

puts all.to_json
