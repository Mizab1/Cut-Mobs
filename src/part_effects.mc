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
function tick{
    # ocelot effects
    execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100001}}]}] run{
        effect give @s speed 2 8 true
    }

    # llama head
    execute as @a[scores={right_clicked=1..}, predicate=part_effects:llama_spit] at @s run{
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