scoreboard objectives add cur_aimed_entity dummy
scoreboard players set #ul.first_distance cur_aimed_entity 0
scoreboard players set #ul.second_distance cur_aimed_entity 10
scoreboard players set #ul.tmp_second_distance cur_aimed_entity 100
scoreboard players set #ul.translation cur_aimed_entity -1000
scoreboard players set #ul.first_size cur_aimed_entity 0
scoreboard players set #ul.operate_result cur_aimed_entity 1
scoreboard players set @a cur_aimed_entity 0
scoreboard players set #-100 cur_aimed_entity -100
scoreboard players set #100 cur_aimed_entity 100
scoreboard players set #2 cur_aimed_entity 2
scoreboard players set #-1 cur_aimed_entity -1
scoreboard players set #tmp_first_size cur_aimed_entity 0

tellraw @a [{color:"gold",translate:"欢迎加载此数据包，您可以点击%s生成一个实体，使用%s的命令更改实体的外观，具体格式请参见%s。",with:[\
    {color:"green",text:"此处",click_event:{action:"run_command",command:"function ultra-lim:summon"}},\
    {color:"gray",text:"此处",click_event:{action:"suggest_command",command:"/data modify storage ultra-lim block_state set value {}"}},\
    {shadow_color:-1797399075,text:"此链接",click_event:{action:"open_url",url:"https://zh.minecraft.wiki/w/%E5%B1%95%E7%A4%BA%E5%AE%9E%E4%BD%93#%E6%95%B0%E6%8D%AE%E5%80%BC"}}\
]}]

return 1
give @a written_book[written_book_content={title:a,author:a,pages:[[\
{text:"summon\n",click_event:{action:"run_command",command:"function ultra-lim:summon"}},\
{text:"kill\n",click_event:{action:"run_command",command:"function ultra-lim:kill_all"}}\
]]}]