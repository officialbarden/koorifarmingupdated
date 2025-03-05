#> k.tips:random_index

# Get index
$execute store result storage k.tips:values index int 1 run random value 0..$(indexLength)

# Retrieve tip
function k.tips:retrieve_tip with storage k.tips:values