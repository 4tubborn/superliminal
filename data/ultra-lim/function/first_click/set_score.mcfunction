
scoreboard players set @s cur_aimed_entity 1
execute on vehicle run scoreboard players set @s cur_aimed_entity 1
execute on vehicle store result score #ul.first_size cur_aimed_entity run data get entity @s transformation.scale[0] 100