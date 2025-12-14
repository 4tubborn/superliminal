advancement revoke @s only ultra-lim:first_left_click
scoreboard players set @s cur_aimed_entity 1
function #bs.view:as_aimed_entity {run:"function ultra-lim:first_click/set_score",with:{max_distance:50}}
scoreboard players set #ul.first_distance cur_aimed_entity 0

execute store result score #ul.first_distance cur_aimed_entity run data get storage bs:out raycast.distance 100
summon interaction ~ ~1 ~ {Tags:["ultra-lim.entity"],width:2,height:2.5,response:true}