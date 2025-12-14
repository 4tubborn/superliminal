
execute if score #ul.second_distance cur_aimed_entity matches 5000 run return run function ultra-lim:tp/tp_end
scoreboard players add #ul.second_distance cur_aimed_entity 10

tp @s ^ ^ ^0.1

execute positioned ^ ^ ^0.1 if block ~ ~ ~ #air unless entity @e[predicate=ultra-lim:ultra_lim_entity,distance=..1,scores={cur_aimed_entity=0}] run return run function ultra-lim:tp/tp
function ultra-lim:tp/tp_end