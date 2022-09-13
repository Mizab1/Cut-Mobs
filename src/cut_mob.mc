import ./macros/var.mcm

function load{
    var create right_clicked minecraft.used:minecraft.carrot_on_a_stick
    var create raycast_distance dummy
}

function put_cut_tag{
    tag @s add cut
    data merge entity @s {CustomName:'{"text":"cut"}'}
}
function give_scissors{
    give @s carrot_on_a_stick{display:{Name:'{"text":"Scissors","color":"gold","italic":false}'},CustomModelData:110001} 1
}

function tick{
    execute as @a[predicate=cut_mob:scissor] at @s run{
        particle totem_of_undying ~ ~ ~ 0.5 0.2 0.5 0.1 20 normal
        particle poof ~ ~ ~ 0.2 0.2 0.2 0.2 1 normal
    }
    execute as @a[scores={right_clicked=1..}, predicate=cut_mob:scissor] at @s run{
        scoreboard players set @s right_clicked 0
        scoreboard players set @s raycast_distance 40

        # Scissors (Cut part)
        execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #cut_mob:passable run{
            !IF(config.dev) {
                particle crit
            }
            
            scoreboard players remove @s raycast_distance 1

            execute as @e[type=#cut_mob:is_cuttable, tag=!cut, distance=..1.5] at @s run{
                # sheep
                # execute if entity @s[type=sheep] run{
                #     tag @s add cut
                #     data merge entity @s {Sheared:1b}

                #     title @a title {"text":"You cut the sheep's wool", "color":"dark_purple"}
                #     title @a subtitle {"text":"You can smash everyone to air", "color":"gold"}
                # }

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

                    summon item ~ ~ ~ {Item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{display:{Name:'{"text":"Snowman\'s Head","color":"gold","italic":false}'},CustomModelData:100003}}}
                }

                # enderman
                execute if entity @s[type=enderman] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the enderman's head", "color":"dark_purple"}
                    title @a subtitle {"text":"You now have infinite ender pearl", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Enderman\'s Head","color":"gold","italic":false}'},CustomModelData:100004}}}
                }

                # creeper
                execute if entity @s[type=creeper] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the creeper's head", "color":"dark_purple"}
                    title @a subtitle {"text":"You now explode whenever you sneak", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Creeper\'s Head","color":"gold","italic":false}'},CustomModelData:100005}}}
                }

                # goat
                execute if entity @s[type=goat] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the goat's horn", "color":"dark_purple"}
                    title @a subtitle {"text":"You now have jump boost", "color":"gold"}
                    
                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Goat\'s Horns","color":"gold","italic":false}'},CustomModelData:100006}}}
                }

                # cow
                execute if entity @s[type=cow] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the cow's udder", "color":"dark_purple"}
                    title @a subtitle {"text":"You now shoot poison milk", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Cow\'s Udder","color":"gold","italic":false}'},CustomModelData:100007}}}
                }

                # dolphin
                execute if entity @s[type=dolphin] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the dolphin's fin", "color":"dark_purple"}
                    title @a subtitle {"text":"Now you can swim faster and breath underwater", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Dolphin\'s Fins","color":"gold","italic":false}'},CustomModelData:100008}}}
                }

                # bat
                execute if entity @s[type=bat] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the bats's wing", "color":"dark_purple"}
                    title @a subtitle {"text":"Now you can fly and levitate when sneaking", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:elytra",Count:1b,tag:{display:{Name:'{"text":"Bat\'s Wing","color":"gold","italic":false}'},CustomModelData:100009}}}
                }

                # spider
                execute if entity @s[type=spider] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the spider's legs", "color":"dark_purple"}
                    title @a subtitle {"text":"Now you can climb the wall when sneaking", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Spider\'s legs","color":"gold","italic":false}'},CustomModelData:100010}}}
                }

                # horse
                execute if entity @s[type=horse] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the Horse's tail", "color":"dark_purple"}
                    title @a subtitle {"text":"Now you can run fast and jump higher and have more resistance", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Horse\'s tail","color":"gold","italic":false}'},CustomModelData:100011}}}
                }

                # ghast
                execute if entity @s[type=ghast] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the Ghast's head", "color":"dark_purple"}
                    title @a subtitle {"text":"Now you can shoot fireballs", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Ghast\'s head","color":"gold","italic":false}'},CustomModelData:100012}}}
                }

                # glow_squid
                execute if entity @s[type=glow_squid] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the Glowing Squid's tentacles", "color":"dark_purple"}
                    title @a subtitle {"text":"Now you can detect ores when sneaking", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Glowing Squid\'s tentacles","color":"gold","italic":false}'},CustomModelData:100013}}}
                }

                # turtle
                execute if entity @s[type=turtle] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the Turtle's shell", "color":"dark_purple"}
                    title @a subtitle {"text":"Now you can got heavy resistance", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Turtle\'s shell","color":"gold","italic":false}'},CustomModelData:100014}}}
                }

                # wolf
                execute if entity @s[type=wolf] run{
                    function cut_mob:put_cut_tag

                    title @a title {"text":"You cut the Wolf's nose", "color":"dark_purple"}
                    title @a subtitle {"text":"Now you can detect mobs in 30 block readius when sneaking", "color":"gold"}

                    summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Wolf\'s nose","color":"gold","italic":false}'},CustomModelData:100015}}}
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
                "nbt": "{CustomModelData:110001}"
            }
        }
    }
}
predicate is_sneaking{
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "flags": {
            "is_sneaking": true
        }
    }
}

blocks passable{
    minecraft:air
    minecraft:cave_air
    minecraft:void_air
    minecraft:water
}

entities is_cuttable{
    minecraft:sheep
    minecraft:bat
    minecraft:goat
    minecraft:llama
    minecraft:snow_golem
    minecraft:ocelot
    minecraft:enderman
    minecraft:creeper
    minecraft:dolphin
    minecraft:cow
    minecraft:spider
    minecraft:horse
    minecraft:ghast
    minecraft:glow_squid
    minecraft:turtle
    minecraft:wolf
}