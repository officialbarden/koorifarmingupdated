fill ~1 ~1 ~1 ~-1 ~-2 ~-1 air destroy

setblock ~ ~ ~ dispenser[facing=down]{CustomName:'"Hypersorter"'}
setblock ~ ~ ~1 spruce_stairs[facing=north]
setblock ~ ~ ~-1 spruce_stairs[facing=south]
setblock ~1 ~ ~ spruce_stairs[facing=west]
setblock ~-1 ~ ~ spruce_stairs[facing=east]

setblock ~ ~-1 ~ barrel[facing=up]{CustomName:'"Slot 4b"'}
setblock ~ ~-1 ~1 barrel[facing=up]{CustomName:'"Slot 1b"'}
setblock ~ ~-1 ~-1 barrel[facing=up]{CustomName:'"Slot 7b"'}
setblock ~1 ~-1 ~1 barrel[facing=up]{CustomName:'"Slot 0b"'}
setblock ~1 ~-1 ~ barrel[facing=up]{CustomName:'"Slot 3b"'}
setblock ~1 ~-1 ~-1 barrel[facing=up]{CustomName:'"Slot 6b"'}
setblock ~-1 ~-1 ~1 barrel[facing=up]{CustomName:'"Slot 2b"'}
setblock ~-1 ~-1 ~-1 barrel[facing=up]{CustomName:'"Slot 8b"'}
setblock ~-1 ~-1 ~ barrel[facing=up]{CustomName:'"Slot 5b"'}

setblock ~ ~-2 ~ hopper[facing=down]{CustomName:'"Slot 4b"'}
setblock ~ ~-2 ~1 hopper[facing=down]{CustomName:'"Slot 1b"'}
setblock ~ ~-2 ~-1 hopper[facing=down]{CustomName:'"Slot 7b"'}
setblock ~1 ~-2 ~1 hopper[facing=down]{CustomName:'"Slot 0b"'}
setblock ~1 ~-2 ~ hopper[facing=down]{CustomName:'"Slot 3b"'}
setblock ~1 ~-2 ~-1 hopper[facing=down]{CustomName:'"Slot 6b"'}
setblock ~-1 ~-2 ~1 hopper[facing=down]{CustomName:'"Slot 2b"'}
setblock ~-1 ~-2 ~-1 hopper[facing=down]{CustomName:'"Slot 8b"'}
setblock ~-1 ~-2 ~ hopper[facing=down]{CustomName:'"Slot 5b"'}

tag @s add kf.placedMachine