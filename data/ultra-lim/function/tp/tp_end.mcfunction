tp ^ ^ ^-0.1
execute store result score #ul.second_distance cur_aimed_entity run data get storage bs:out raycast.distance 100

scoreboard players operation #ul.second_distance cur_aimed_entity -= #10 cur_aimed_entity
execute if entity @p[distance=..1,scores={cur_aimed_entity=1}] run scoreboard players set #hit_player cur_aimed_entity 1
function ultra-lim:hit/setup
scoreboard players set #hit_player cur_aimed_entity 0
scoreboard players reset #ul.second_distance cur_aimed_entity