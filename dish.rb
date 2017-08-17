require 'json'

all = Array.new
dishes = [
	{
	:id => '1',
	:name => '餃子',
	:ingredients => [1,2,3,4,5,6],
	:equipments => [1,4]
	},
	{
	:id => '2',
	:name => 'カレー',
	:ingredients => [7,8,9,10,11],
	:equipments => [6,7]
	},
	{
	:id => '3',
	:name => '焼きそば',
	:ingredients => [3,8,9,12,13,14],
	:equipments => [1]
	},
	{
	:id => '4',
	:name => '回鍋肉',
	:ingredients => [3,5,6,8,13,14],
	:equipments => [1]
	},
	{
	:id => '5',
	:name => 'ハンバーグ',
	:ingredients => [3,9,15,16],
	:equipments => [1,2,3]
	},
	{
	:id => '6',
	:name => 'とんかつ',
	:ingredients => [3,14,16,17],
	:equipments => [3,8,9]
	}
]

ingredients =[
	{
	:id => '1',
	:name => '小麦粉'
	},
	{
	:id => '2',
	:name => '豚ひき肉'
	},
	{
	:id => '3',
	:name => 'キャベツ'
	},
	{
	:id => '4',
	:name => 'ニラ'
	},
	{
	:id => '5',
	:name => 'にんにく'
	},
	{
	:id => '6',
	:name => 'しょうが'
	},
	{
	:id => '7',
	:name => '牛肉'
	},
	{
	:id => '8',
	:name => 'にんじん'
	},
	{
	:id => '9',
	:name => 'たまねぎ'
	},
	{
	:id => '10',
	:name => 'じゃがいも'
	},
	{
	:id => '11',
	:name => 'カレールー'
	},
	{
	:id => '12',
	:name => '焼きそばの麺'
	},
	{
	:id => '13',
	:name => 'ピーマン'
	},
	{
	:id => '14',
	:name => '豚肉'
	},
	{
	:id => '15',
	:name => '合い挽き肉'
	},
	{
	:id => '16',
	:name => '卵'
	},
	{
	:id => '17',
	:name => 'パン粉'
	}
]

equipments = [
	{
	:id => '1',
	:name => 'フライパン'
	},
	{
	:id => '2',
	:name => 'ボウル'
	},
	{
	:id => '3',
	:name => 'バット'
	},
	{
	:id => '4',
	:name => '麺棒'
	},
	{
	:id => '5',
	:name => 'フライパン'
	},
	{
	:id => '6',
	:name => '鍋'
	},
	{
	:id => '7',
	:name => 'おたま'
	},
	{
	:id => '8',
	:name => 'フライヤー'
	},
	{
	:id => '9',
	:name => 'トング'
	}
]

hash1 = { "dishes" => dishes}
hash1.class
hash2 = { "ingredients" => ingredients}
hash2.class
hash3 = { "equipments" => equipments}
hash3.class

all.push(hash1)
all.push(hash2)
all.push(hash3)
puts all.to_json
