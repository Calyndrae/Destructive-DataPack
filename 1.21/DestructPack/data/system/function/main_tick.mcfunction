# --- TRIGGER 1: Fishing Rod + Looking Down ---
# x_rotation=90 is perfectly down. 89..90 gives a tiny bit of leeway.
execute as @a[scores={use_rod=1..},x_rotation=89..90] run function system:init_simple_crash
# Reset the score so it doesn't loop forever
scoreboard players set @a[scores={use_rod=1..}] use_rod 0

# --- TRIGGER 2: Iron Sword Drop + Looking Down ---
# Detects an iron sword item entity that was just spawned (Age:0s) near a player looking down
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_sword"},Age:0s}] at @s as @p[x_rotation=89..90,distance=..2] run function system:init_perm_crash