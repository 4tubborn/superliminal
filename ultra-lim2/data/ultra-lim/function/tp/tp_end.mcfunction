#scoreboard players operation #ul.second_distance cur_aimed_entity /= #100 cur_aimed_entity
say end
#tellraw @a [{score:{name:"#ul.operate_result",objective:"cur_aimed_entity"}}]
#scoreboard players operation #ul.second_distance cur_aimed_entity = #ul.tmp_second_distance cur_aimed_entity
#scoreboard players operation #ul.second_distance cur_aimed_entity /= #100 cur_aimed_entity

execute if entity @p[distance=..1,scores={cur_aimed_entity=1}] run scoreboard players set #hit_player cur_aimed_entity 1
function ultra-lim:hit/setup
scoreboard players set #hit_player cur_aimed_entity 0
scoreboard players set #ul.second_distance cur_aimed_entity 10
#scoreboard players set #ul.tmp_second_distance cur_aimed_entity 100
scoreboard players set #ul.translation cur_aimed_entity -100