 
data modify entity @s transformation.scale set value [0,0,0]



tellraw @a [{translate:"%s, %s, %s",with:[\
    {score:{name:"#ul.first_distance",objective:cur_aimed_entity}},\
    {score:{name:"#ul.second_distance",objective:cur_aimed_entity}},\
    {score:{name:"#ul.first_size",objective:cur_aimed_entity}},\
]}]
#return fail

function ultra-lim:operate/calculate



execute store result storage ultra-lim tmp_size float 0.0001 run scoreboard players get #ul.translation cur_aimed_entity

#tellraw @a [{score:{name:"#ul.operate_result",objective:"cur_aimed_entity"}}]

execute if score #hit_player cur_aimed_entity matches 1 run return run function ultra-lim:hit/hit_player
function ultra-lim:hit/adjust_pos






#distance保留2位小数 first_size保留2位小数,translation为4位小数