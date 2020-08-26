#DONOTDROP
execute as @a[tag=DONOTDROP] if score @s drop matches 1.. run function donotdo:failed

#DONOTFALL
execute as @a[tag=DONOTFALL] store result score @s DoNotTemp run data get entity @s FallDistance 100
execute as @a[tag=DONOTFALL, scores={DoNotTemp=300..}] run function donotdo:failed

#DONOTGODEEP
execute as @a[tag=DONOTGODEEP] store result score @s DoNotTemp run data get entity @s Pos[1] 10
execute as @a[tag=DONOTGODEEP, scores={DoNotTemp=..200}] run function donotdo:failed

#DONOTGONETHER
execute as @a[tag=DONOTGONETHER, nbt={Dimension: "minecraft:the_nether"}] run function donotdo:failed

#DONOTJUMP
execute as @a[tag=DONOTJUMP] if score @s jump matches 1.. run function donotdo:failed

#DONOTSHIFT
execute as @a[tag=DONOTSHIFT] if score @s sneak matches 1.. run function donotdo:failed

#DONOTRIDE
execute as @a[tag=DONOTRIDE] if data entity @s RootVehicle run function donotdo:failed

#DONOTGOHIGH
execute as @a[tag=DONOTGOHIGH] store result score @s DoNotTemp run data get entity @s Pos[1] 10
execute as @a[tag=DONOTGOHIGH, scores={DoNotTemp=1280..}] run function donotdo:failed

#DONOTINTERACTFURNACE
execute as @a[tag=DONOTINTERACTFURNACE] if score @s furnace matches 1.. run function donotdo:failed

#DONOTINTERACTANVIL
execute as @a[tag=DONOTINTERACTANVIL] if score @s anvil matches 1.. run function donotdo:failed

#DONOTINTERACTCAMPFIRE
execute as @a[tag=DONOTINTERACTCAMPFIRE] if score @s campfire matches 1.. run function donotdo:failed

#DONOTSWIM
execute as @a[tag=DONOTSWIM] if score @s swim matches 1.. run function donotdo:failed

#DONOTTHROWSNOWBALL
execute as @a[tag=DONOTTHROWSNOWBALL] if score @s snowball matches 1.. run function donotdo:failed

#DONOTTHROWEGG
execute as @a[tag=DONOTTHROWEGG] if score @s egg matches 1.. run function donotdo:failed

#DONOTWALKICE
execute as @a[tag=DONOTWALKICE] at @s if block ~ ~-0.01 ~ ice run function donotdo:failed


scoreboard players enable @a broadcast
tag @a[scores={broadcast=1..}] add receiveBroadcast
execute if entity @a[tag=receiveBroadcast] as @a run function donotdo:broadcast
scoreboard players set @a broadcast 0
tag @a remove receiveBroadcast

scoreboard players reset @a DoNotTemp