import ./macros/var.mcm

function load{
    var create pos_x1 dummy
    var create pos_y1 dummy
    var create pos_z1 dummy

    var create pos_x2 dummy
    var create pos_y2 dummy
    var create pos_z2 dummy

    var create spit_distance dummy
}
clock 5t{
    # creeper head
    execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100005}}]}] run{
        execute at @s if entity @s[predicate=cut_mob:is_sneaking] run{
            effect give @s resistance 2 20 true
            summon creeper ~ ~1.3 ~ {ignited:1b, Fuse:1}
        }
    }

    execute as @a run{
        # llama head
        execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100002}}]}] run{
            clear @s minecraft:carrot_on_a_stick{CustomModelData:200001}
        }

        # cow udder
        execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100007}}]}] run{
            clear @s minecraft:carrot_on_a_stick{CustomModelData:200002}
        }
    }
}
function tick{
    # ocelot effects
    execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100001}}]}] run{
        effect give @s speed 2 8 true
    }

    # llama head
    execute as @a[scores={right_clicked=1..}, predicate=part_effects:llama_spit] at @s if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100002}}]}] run{
        scoreboard players set @s right_clicked 0
        scoreboard players set @s spit_distance 8

        execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #cut_mob:passable run{
            particle poof ~ ~-0.3 ~
            scoreboard players remove @s spit_distance 1

            execute as @e[type=#part_effects:undead, distance=..1.5] run{
                effect give @s instant_health 1 0 true
            }
            execute as @e[type=!#part_effects:undead, distance=..1.5] run{
                effect give @s instant_damage 1 0 true
            }

            execute if block ~ ~ ~ #cut_mob:passable unless entity @e[distance=..1.5] positioned ^ ^ ^1 if score @s spit_distance matches 1.. run function $block
        }
        
        # summon minecraft:llama_spit ^ ^2 ^1 {Tags:["player_spawned"]}
    }
    # execute as @e[type=llama_spit, tag=!tagged, tag=player_spawned] at @s rotated as @p run{

    #     execute store result score @s pos_x1 run data get entity @s Pos[0] 100
    #     execute store result score @s pos_y1 run data get entity @s Pos[1] 100
    #     execute store result score @s pos_z1 run data get entity @s Pos[2] 100

    #     tp @s ^ ^ ^0.5

    #     execute store result score @s pos_x2 run data get entity @s Pos[0] 100
    #     execute store result score @s pos_y2 run data get entity @s Pos[1] 100
    #     execute store result score @s pos_z2 run data get entity @s Pos[2] 100

    #     scoreboard players operation @s pos_x2 -= @s pos_x1
    #     scoreboard players operation @s pos_y2 -= @s pos_y1
    #     scoreboard players operation @s pos_z2 -= @s pos_z1 

    #     execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s pos_x2
    #     execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s pos_y2
    #     execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s pos_z2 

    #     tellraw @r {"text":"-----------------------"}
    #     tellraw @p {"score":{"name":"@s ","objective":"pos_x2"}}
    #     tellraw @p {"score":{"name":"@s ","objective":"pos_y2"}}
    #     tellraw @p {"score":{"name":"@s ","objective":"pos_z2"}}
    #     tellraw @p {"text":"-----------------------"}


    #     tag @s add tagged
    # }

    # snowman head
    execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:100003}}]}] run{
        execute unless entity @s[nbt={Inventory:[{id:"minecraft:snowball"}]}] run{
            give @s snowball 1
        }
    }

    # enderman head
    execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100004}}]}] run{
        execute unless entity @s[nbt={Inventory:[{id:"minecraft:ender_pearl"}]}] run{
            give @s ender_pearl 1
        }
    }

    # creeper head
    #* in clock 5t

    # goat horn
    execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100006}}]}] run{
        effect give @s jump_boost 2 3 true
    }

    # cow udder
    execute as @a[scores={right_clicked=1..}, predicate=part_effects:poison_milk] at @s if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100007}}]}] run{
        scoreboard players set @s right_clicked 0
        scoreboard players set @s spit_distance 6

        execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #cut_mob:passable run{
            particle minecraft:dust 1 1 1 1 ~ ~-0.5 ~ 0.1 0.1 0.1 0 10
            scoreboard players remove @s spit_distance 1

            execute as @e[type=#part_effects:undead, distance=..1.5] run{
                effect give @s instant_health 1 0 true
            }
            execute as @e[type=!#part_effects:undead, distance=..1.5] run{
                effect give @s instant_damage 1 0 true
            }

            execute if block ~ ~ ~ #cut_mob:passable unless entity @e[distance=..1.5] positioned ^ ^ ^1 if score @s spit_distance matches 1.. run function $block
        }
        
        # summon minecraft:llama_spit ^ ^2 ^1 {Tags:["player_spawned"]}
    }

    # dolphon fins
    execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100008}}]}] run{
        effect give @s water_breathing 2 10 true
        effect give @s dolphins_grace 4 3 true
    }

    # bat wings
    execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:elytra",Slot:102b,tag:{CustomModelData:100009}}]}] run{
        execute if entity @s[predicate=cut_mob:is_sneaking] run{
            effect give @s levitation 1 4 true
        }
    }

    # spider legs
    execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100010}}]}] run{
        execute at @s if entity @s[predicate=cut_mob:is_sneaking, tag=!spawned_spider] run{
            tag @s add spawned_spider
            execute positioned ~-2 ~ ~-2 run{
                LOOP(4,i){
                    LOOP(4,j){
                        summon spider ~<%i%> ~ ~<%j%> 
                    }
                }
            }
            schedule 1s replace{
                execute as @a if entity @s[tag=spawned_spider] run tag @s remove spawned_spider
            }
        }
    }
}

#> Category
entities undead{
	minecraft:wither
	minecraft:phantom
	minecraft:skeleton_horse
	minecraft:zombified_piglin
	minecraft:drowned
    minecraft:zombie
    minecraft:husk
    minecraft:zombie_villager
    minecraft:skeleton
    minecraft:stray
    minecraft:wither
    minecraft:phantom
}
#> COAS
predicate llama_spit{
	"condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "equipment": {
            "mainhand": {
                "item": "minecraft:carrot_on_a_stick",
                "nbt": "{CustomModelData:200001}"
            }
        }
    }
}
predicate poison_milk{
	"condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "equipment": {
            "mainhand": {
                "item": "minecraft:carrot_on_a_stick",
                "nbt": "{CustomModelData:200002}"
            }
        }
    }
}