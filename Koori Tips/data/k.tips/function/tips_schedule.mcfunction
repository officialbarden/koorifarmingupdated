#> k.tips:tips_schedule

# Create scoreboard
scoreboard objectives add notifications trigger

# Create storage
execute unless data storage k.tips:values tips run data merge storage k.tips:values {tips:[]}

# Scoreboard
scoreboard objectives add .temp dummy
scoreboard players set .index .temp -1

# Retrieve index
data modify storage k.tips:values temp set from storage k.tips:values tips
execute if data storage k.tips:values tips[0] run function k.tips:retrieve_index
execute store result storage k.tips:values indexLength int 1 run scoreboard players get .index .temp

# Send random tip
function k.tips:random_index with storage k.tips:values

# Send message
execute if data storage k.tips:values tips[0] run function k.tips:send_tip with storage k.tips:values

# Remove scoreboard
scoreboard objectives remove .temp

#> Schedule
schedule function k.tips:tips_schedule 480s replace