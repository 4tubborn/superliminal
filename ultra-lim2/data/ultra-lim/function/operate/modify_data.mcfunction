$tp ^ ^ ^$(tmp_size)

execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players get #ul.operate_result cur_aimed_entity
execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players get #ul.operate_result cur_aimed_entity
execute store result entity @s transformation.scale[2] float 0.01 run scoreboard players get #ul.operate_result cur_aimed_entity


execute store result entity @s transformation.translation[0] float 0.0001 run scoreboard players get #ul.translation cur_aimed_entity

execute store result entity @s transformation.translation[2] float 0.0001 run scoreboard players get #ul.translation cur_aimed_entity

execute store result storage ultra-lim tmp_size float 0.01 run scoreboard players get #ul.operate_result cur_aimed_entity
execute on passengers run function ultra-lim:operate/rescale_shulker with storage minecraft:ultra-lim

tellraw @a [{entity:"@s",nbt:"transformation.scale[0]"},{entity:"@s",nbt:"transformation.translation[0]"}]