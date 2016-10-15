##Kitchen Nested Data Structure

#Create a hash named kitchen containing areas of a kitchen (pantry, cupboard, freezer, fridge, etc)
#Fill areas with items or further subdivisions if required

kitchen = {
	pantry: ["canned food", "drinks", "dry pasta"],
	cupboard: {
		top_row: ["cereal, oatmeal"],
		middle_row: ["miscellaneous snacks"],
		bottom_row: ["microwave", "bread", "beef jerky"]
	},
	freezer: ["ice", "ice cream", "frozen meat"],
	fridge: [
		"milk", "cheese", "leftovers", ["celery", "lettuce", "cucumbers"]
	]
}

p "In my kitchen..."
p "You can find #{kitchen[:pantry][1]} in the pantry" #should say where to find drinks
p "or #{kitchen[:cupboard][:bottom_row][1]} on the bottom row of the cupboard." #should say where to find bread
p "There is #{kitchen[:freezer][1]} in the freezer" #ice cream location!
p "and #{kitchen[:fridge][2]} and #{kitchen[:fridge][3][1]} in the fridge."