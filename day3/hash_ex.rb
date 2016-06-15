# hash = {
# 	:liver =>{
# 		:animals => [
# 			0,
# 			1,
# 			2,
# 			3,
# 			{
# 				:phylum => {
# 					:members => [
# 						"PROTECT THE ENVIRONMENT"]
# 				}
# 				}]

# 	}
# }

#puts hash[:liver][:animals][4][:phylum][:members][0]

# hash = {
# 	:wat => ["yeah", "right",
# 		{
# 			:wut => ["mister",[[0,1,2,3,4,5,6,7,8,{:bbq => "food"}]]
# 			]
# 		}	
# 	]
# }
# puts hash[:wat][2][:wut][1][0][9][:bbq]




arr = [["yeah", "right", "what", "huh", "sup", {
	:secret => {
		:unlock => "party"
	}
}
]]
puts arr[0][5][:secret][:unlock]