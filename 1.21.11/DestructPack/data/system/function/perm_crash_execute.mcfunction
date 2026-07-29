
# 1. Scramble Player Data (Attributes + 1.21.11 Item Modification)
# NOTE: attribute IDs dropped the "generic." prefix in 1.21.2+
execute as @r run attribute @s movement_speed base set 50
execute as @r run attribute @s max_health base set 0.1
execute as @r run attribute @s jump_strength base set 10
execute as @r run attribute @s scale base set 0.05
experience set @a 0 points

gamerule sendCommandFeedback false

gamemode adventure @a

gamerule commandModificationBlockLimit 999999999

# Completely trash their inventory and armor slots
item replace entity @a weapon.mainhand with minecraft:acacia_boat[minecraft:custom_name="HELLO_WORLD"]
item replace entity @a weapon.offhand with minecraft:acacia_boat[minecraft:custom_name="HELLO_WORLD"]
function system:perm_crash_loop
scoreboard objectives add ram_leak dummy
