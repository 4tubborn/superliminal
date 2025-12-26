execute if score #ul.first_distance cur_aimed_entity matches ..0 run scoreboard players operation #ul.first_distance cur_aimed_entity *= #-1 cur_aimed_entity

scoreboard players operation #ul.operate_result cur_aimed_entity = #ul.second_distance cur_aimed_entity
scoreboard players operation #ul.operate_result cur_aimed_entity *= #ul.first_size cur_aimed_entity
scoreboard players operation #ul.operate_result cur_aimed_entity /= #ul.first_distance cur_aimed_entity

scoreboard players operation #ul.translation cur_aimed_entity = #ul.operate_result cur_aimed_entity
scoreboard players operation #ul.translation cur_aimed_entity *= #-100 cur_aimed_entity
scoreboard players operation #ul.translation cur_aimed_entity /= #2 cur_aimed_entity

#s1=d1*s0/d0 //s1为operate_result 实际s1的100倍
#translation=s1*-100/2 //实际translation的10000倍