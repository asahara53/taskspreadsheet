#cording = UTF-8
require 'csv'
require 'json'
all = Array.new
equipments = []

CSV.foreach('table2.csv',headers: true) do |data|
	#puts data.inspect
	#data.shift
	#puts data.inspect
	equipments.push data[1]
	equipments.push data[2]
	equipments.push data[3]
	#data.shift #1列目を飛ばす
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

#h1 = Hash["id", 2, "name",neweq[1]]
#h2 = Hash["id", 3, "name",neweq[2]]
#h3 = Hash["id", 4, "name",neweq[3]]
#h4 = Hash["id", 5, "name",neweq[4]]
#h5 = Hash["id", 6, "name",neweq[5]]
#h6 = Hash["id", 7, "name",neweq[6]]
#h7 = Hash["id", 8, "name",neweq[7]]

puts all.to_json

#table.class
#table.headers
#table.first
#table.compact!

#p table.group_by {|item| item[0].chr }

#table.each do |row|
#  puts "row[:id] row[:name] row[uid]"  #=> 1 taro 28c762c8ab6c84d8380496ede2599d00
#end

#CSV.foreach('table1.csv', encoding: 'UTF-8:UTF-8') do |row|
 #   p row
#end

#CSV.foreach('table2.csv', encoding: 'UTF-8:UTF-8') do |row|
#    p row
#end
