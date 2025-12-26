summon armor_stand ~ ~ ~ {attributes:[{id:scale,base:0}],Silent:true,Small:true,Tags:["ultra-lim.entity"],Invulnerable:true,Invisible:true}
ride @s mount @n[type=armor_stand,tag=ultra-lim.entity]
scoreboard players set @s cur_aimed_entity 0
execute on passengers run scoreboard players set @s cur_aimed_entity 0