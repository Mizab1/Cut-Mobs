function load{
    scoreboard objectives add right_clicked minecraft.used:minecraft.carrot_on_a_stick
    scoreboard objectives add raycast_distance dummy
}

function tick{
    execute as @a[scores={right_clicked=1..}, predicate=cut_mob:scissor] at @s run{
        scoreboard players set @s right_clicked 0
        scoreboard players set @s raycast_distance 12

        execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #cut_mob:passable if score @s raycast_distance matches 1.. run{
            particle crit
            scoreboard players remove @s raycast_distance 1

            execute as @e[type=#cut_mob:is_cuttable, tag=!cut, distance=..1.5] at @s run{
                # for sheep
                execute if entity @s[type=sheep] run{
                    data merge entity @s {Sheared:1b}
                    tag @s add cut
                    title @a title {"text":"You cut the sheep's part", "color":"dark_purple"}
                    title @a subtitle {"text":"You can smash everyone to air", "color":"gold"}
                }

                
            }
            execute if block ~ ~ ~ #cut_mob:passable unless entity @e[type=#cut_mob:is_cuttable, tag=!cut, distance=..1.5] positioned ^ ^ ^0.5 run function $block
        }
    }
}

#> PREDICATES
predicate scissor{
	"condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "equipment": {
            "mainhand": {
                "item": "minecraft:carrot_on_a_stick",
                "nbt": "{CustomModelData:000001}"
            }
        }
    }
}

blocks passable{
    minecraft:air
    minecraft:cave_air
    minecraft:void_air
}

entities is_cuttable{
    minecraft:sheep
    minecraft:bee
    minecraft:wolf
    minecraft:bat
    minecraft:goat
    minecraft:llama
    minecraft:snow_golem
    minecraft:panda
    minecraft:ocelot
    minecraft:piglin
    minecraft:hoglin
    minecraft:magma_cube
}