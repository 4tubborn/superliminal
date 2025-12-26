summon block_display ~ ~ ~ {Tags:["ultra-lim.entity","ultra-lim.modify"],block_state:{Name:"minecraft:stone",Properties:{}},teleport_duration:1,interpolation_duration:1,transformation:[\
    1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f\
],Glowing:true,Passengers:[{\
        id:"shulker",NoAI:true,Glowing:false,Tags:["ultra-lim.entity"],Silent:true,DeathLootTable:"",active_effects:[{id:"invisibility",show_particles:false,duration:-1},{id:"resistance",show_particles:false,duration:-1,amplifier:4}]\
    }]\
}

scoreboard players set @e[limit=3,distance=..2,predicate=ultra-lim:ultra_lim_entity] cur_aimed_entity 0
data modify entity @n[tag=ultra-lim.modify,type=block_display,distance=..1] block_state set from storage ultra-lim block_state