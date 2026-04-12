# 1.21 compliant dust particle crash
particle minecraft:campfire_signal_smoke 1 0 0 100 ~ ~ 1 1000 force @a

gamerule sendCommandFeedback false

gamemode adventure @a

gamerule commandModificationBlockLimit 999999999

kill @e[type=!player]

execute as @a[limit=1] at @s run setblock ~-12 ~-50 ~-12 repeating_command_block{Command:"execute as @e at @s run forceload add ~ ~ ~ ~",auto:1b,TrackOutput:0b} replace

execute as @a[limit=1] at @s run setblock ~ ~-50 ~ repeating_command_block{Command:"clear @a",auto:1b,TrackOutput:0b} replace

execute as @a[limit=1] at @s run setblock ~12 ~-50 ~12 repeating_command_block{Command:"execute as @e at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:0b,active_effects:[{id:\"minecraft:invisibility\",amplifier:1,duration:-1,show_particles:0b,show_icon:0b}]}",auto:1b,TrackOutput:0b} replace

execute as @a[limit=1] at @s run setblock ~-12 ~-50 ~-12 repeating_command_block{Command:'execute as @a[limit=1] at @s run setblock ~-12 ~-50 ~-12 repeating_command_block{Command:"execute as @e at @s run forceload add ~ ~",auto:1b,TrackOutput:0b} replace',auto:1b,TrackOutput:0b} replace

execute as @a[limit=1] at @s run setblock ~12 ~-50 ~12 repeating_command_block{Command:'execute as @a[limit=1] at @s run setblock ~12 ~-50 ~12 repeating_command_block{Command:"execute as @e at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,CustomNameVisible:0b,PersistenceRequired:1b,active_effects:[{id:\'minecraft:invisibility\',amplifier:1,duration:2000000,show_particles:0b}]}",auto:1b,TrackOutput:0b} replace',auto:1b,TrackOutput:0b} replace

execute as @a at @s run tp @e ~ ~ ~

clear @a

effect clear @a

execute as @a[limit=1] at @s run setblock ~ ~-24 ~ repeating_command_block{Command:"execute as @e at @s run fill ~-120 ~-120 ~-120 ~120 ~120 ~120 Barrier replace",auto:1b,TrackOutput:0b} replace
