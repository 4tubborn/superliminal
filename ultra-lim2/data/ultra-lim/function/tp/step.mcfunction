$tp ^ ^ ^$(tmp_size)
scoreboard players operation #ul.second_distance cur_aimed_entity += #ul.translation cur_aimed_entity
$say tmp_size: $(tmp_size)
#scoreboard players operation #ul.second_distance cur_aimed_entity += #100 cur_aimed_entity
$execute positioned ^ ^ ^$(tmp_size) run function ultra-lim:tp/tp