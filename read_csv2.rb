require 'csv'
require 'json'
all = Array.new
ingredients = []

CSV.foreach('table1.csv',headers: true) do |data|
	ingredients.push data[1]
	ingredients.push data[2]
	ingredients.push data[3]
end

newingredients = ingredients.join("、").gsub("／","、").gsub(",","、").gsub(
	"　","").delete!(' ').split("、").uniq.compact
	x = 1
	y = 0
newingredients.each do |newin|
	h = Hash["id", x, "name", newin]
	all.push(h)
	x += 1
	y += 1
end
puts all