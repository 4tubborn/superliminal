
scoreboard players set @s cur_aimed_entity 0
kill @n[type=interaction,tag=ultra-lim.entity,distance=..1]
function #bs.view:as_aimed_entity {run:"function ultra-lim:second_click/reset_score",with:{max_distance:50}}
execute as @n[type=block_display,tag=ultra-lim.entity,distance=..50,scores={cur_aimed_entity=10}] at @s run function ultra-lim:gravity/gravity

advancement revoke @s only ultra-lim:second_left_click