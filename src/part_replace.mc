import ./macros/internal_macros.mcm

function tick{
    # ocelot part
    execute as @a[scores={right_clicked=1..}, predicate=part_replace:ocelot_tail] at @s run{
        scoreboard players remove @s right_clicked 1

        execute(if entity @s[nbt={Inventory:[{Slot:103b}]}]){
            tellraw @s {"text":"Please first remove the existing part", "color":"gold"}
        }
        execute(unless entity @s[nbt={Inventory:[{Slot:103b}]}]){
            item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Ocelot\'s Tail","color":"gold","italic":false}'},CustomModelData:100001} 1
            clear @s minecraft:carrot_on_a_stick{CustomModelData:100001} 1
        }
    }

    # llama part
    execute as @a[scores={right_clicked=1..}, predicate=part_replace:llama_head] at @s run{
        scoreboard players remove @s right_clicked 1

        execute(if entity @s[nbt={Inventory:[{Slot:103b}]}]){
            tellraw @s {"text":"Please first remove the existing part", "color":"gold"}
        }
        execute(unless entity @s[nbt={Inventory:[{Slot:103b}]}]){
            item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Llama\'s Head","color":"gold","italic":false}'},CustomModelData:100002} 1
            clear @s minecraft:carrot_on_a_stick{CustomModelData:100002} 1
            give @s carrot_on_a_stick{display:{Name:'{"text":"Shoot spit","italic":false}'}, CustomModelData:200001}
        }
    }
}


#> Animals part
predicate ocelot_tail{
	"condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "equipment": {
            "mainhand": {
                "item": "minecraft:carrot_on_a_stick",
                "nbt": "{CustomModelData:100001}"
            }
        }
    }
}
predicate llama_head{
	"condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "equipment": {
            "mainhand": {
                "item": "minecraft:carrot_on_a_stick",
                "nbt": "{CustomModelData:100002}"
            }
        }
    }
}