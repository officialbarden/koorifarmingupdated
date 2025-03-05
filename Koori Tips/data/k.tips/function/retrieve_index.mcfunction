#> k.tips:retrieve_index

# add to index
scoreboard players add .index .temp 1

# Remove data
data remove storage k.tips:values temp[0]

# If index continues, continue
execute if data storage k.tips:values temp[0] run function k.tips:retrieve_index