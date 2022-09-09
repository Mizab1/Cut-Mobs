import ./macros/var.mcm

function load{
    var create right_clicked minecraft.used:minecraft.carrot_on_a_stick
    var create raycast_distance dummy
}
function put_cut_tag{
    tag @s add cut
    data merge entity @s {CustomName:'{"text":"cut"}'}
}
function tick{
    execute as @a[scores={right_clicked=1..}, predicate=cut_mob:scissor] at @s run{
        scoreboard players set @s right_clicked 0
        scoreboard players set @s raycast_distance 12

        # Scissors (Cut part)
        execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #cut_mob:passable run{
            particle crit
            scoreboard players remove @s raycast_distance 1

            execute as @e[type=#cut_mob:is_cuttable, tag=!cut, distance=..1.5] at @s run{
                # for sheep
                execute if entity @s[type=sheep] run{
                    tag @s add cut
                    data merge entity @s {Sheared:1b}

                    title @a title {"text":"You cut the sheep's wool", "color":"dark_purple"}
                    title @a subtitle {"text":"You can smash everyone to air", "color":"gold"}
                }

                # ocelot
                execute if entity @s[type=ocelot] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the ocelot's tail", "color":"dark_purple"}
                    title @a subtitle {"text":"You can now run faster", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Ocelot\'s Tail","color":"gold","italic":false}'},CustomModelData:100001}}}
                }

                # llama
                execute if entity @s[type=llama] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the Llama's neck", "color":"dark_purple"}
                    title @a subtitle {"text":"You can now spit", "color":"gold"}
                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Llama\'s Head","color":"gold","italic":false}'},CustomModelData:100002}}}
                }

                # snowman
                execute if entity @s[type=snow_golem] run{
                    tag @s add cut
                    data merge entity @s {Pumpkin:0b}

                    title @a title {"text":"You cut the snowman's head", "color":"dark_purple"}
                    title @a subtitle {"text":"You bow have infinite snowball", "color":"gold"}
                }

                # enderman
                execute if entity @s[type=enderman] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the enderman's head", "color":"dark_purple"}
                    title @a subtitle {"text":"You now have infinite ender pearl", "color":"gold"}
                }

                # creeper
                execute if entity @s[type=creeper] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the creeper's head", "color":"dark_purple"}
                    title @a subtitle {"text":"You now explode whenever you sneak", "color":"gold"}
                }

                # goat
                execute if entity @s[type=goat] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the goat's horn", "color":"dark_purple"}
                    title @a subtitle {"text":"You now have jump boost", "color":"gold"}
                }

                # cow
                execute if entity @s[type=cow] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the cow's udder", "color":"dark_purple"}
                    title @a subtitle {"text":"You now shoot poison milk", "color":"gold"}
                }

                # dolphin
                execute if entity @s[type=dolphin] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the dolphin's fin", "color":"dark_purple"}
                    title @a subtitle {"text":"Now you can swim faster and breath underwater", "color":"gold"}
                }

                # bat
                execute if entity @s[type=bat] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the bats's wing", "color":"dark_purple"}
                    title @a subtitle {"text":"Now you can fly and levitate when sneaking", "color":"gold"}
                }

                # spider
                execute if entity @s[type=spider] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the spider's legs", "color":"dark_purple"}
                    title @a subtitle {"text":"Now you can climb the wall when sneaking", "color":"gold"}
                }
            }
            execute if block ~ ~ ~ #cut_mob:passable unless entity @e[type=#cut_mob:is_cuttable, tag=!cut, distance=..1.5] positioned ^ ^ ^0.5 if score @s raycast_distance matches 1.. run function $block
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