tellraw @a [{translate:"%s, %s, %s",with:[\
    {score:{name:"#ul.first_distance",objective:cur_aimed_entity}},\
    {score:{name:"#ul.second_distance",objective:cur_aimed_entity}},\
    {score:{name:"#ul.first_size",objective:cur_aimed_entity}},\
]}]

tellraw @a [{text:"before calculation: "},{score:{name:"#ul.second_distance",objective:"cur_aimed_entity"}}]



#tellraw @a {score:{name:"#ul.translation",objective:"cur_aimed_entity"}}

execute if score #ul.second_distance cur_aimed_entity matches 5000.. run return run function ultra-lim:tp/tp_end
#scoreboard players add #ul.tmp_second_distance cur_aimed_entity 1000

#scoreboard players operation #ul.second_distance cur_aimed_entity = #ul.tmp_second_distance cur_aimed_entity
#scoreboard players operation #ul.second_distance cur_aimed_entity /= #100 cur_aimed_entity

tellraw @a [{text:"before calculation: "},{score:{name:"#ul.translation",objective:"cur_aimed_entity"}}]

function ultra-lim:operate/calculate


#tellraw @a [{text:"before x-1: "},{score:{name:"#ul.translation",objective:"cur_aimed_entity"}}]

scoreboard players operation #ul.translation cur_aimed_entity *= #-1 cur_aimed_entity
execute store result storage ultra-lim tmp_size float 0.01 run scoreboard players get #ul.translation cur_aimed_entity

#tellraw @a {score:{name:"#ul.translation",objective:"cur_aimed_entity"}}

#scoreboard players operation #ul.translation cur_aimed_entity /= #100 cur_aimed_entity



function ultra-lim:tp/collision_detect with storage ultra-lim
#tp @s ^ ^ ^0.1

#execute positioned ^ ^ ^0.1 if block ~ ~ ~ #air unless entity @e[predicate=ultra-lim:ultra_lim_entity,distance=..1,scores={cur_aimed_entity=0}] run return run function ultra-lim:tp/tp
#function ultra-lim:tp/tp_end