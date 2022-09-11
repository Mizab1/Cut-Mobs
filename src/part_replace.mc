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
            clear @s minecraft:carrot_on_a_stick{CustomModelData:200001}
            give @s carrot_on_a_stick{display:{Name:'{"text":"Shoot spit","italic":false}'}, CustomModelData:200001}
        }
    }

    # enderman part
    execute as @a[scores={right_clicked=1..}, predicate=part_replace:enderman_head] at @s run{
        scoreboard players remove @s right_clicked 1

        execute(if entity @s[nbt={Inventory:[{Slot:103b}]}]){
            tellraw @s {"text":"Please first remove the existing part", "color":"gold"}
        }
        execute(unless entity @s[nbt={Inventory:[{Slot:103b}]}]){
            item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Enderman\'s Head","color":"gold","italic":false}'},CustomModelData:100004} 1
            clear @s minecraft:carrot_on_a_stick{CustomModelData:100004} 1
        }
    }

    # creeper part
    execute as @a[scores={right_clicked=1..}, predicate=part_replace:creeper_head] at @s run{
        scoreboard players remove @s right_clicked 1

        execute(if entity @s[nbt={Inventory:[{Slot:103b}]}]){
            tellraw @s {"text":"Please first remove the existing part", "color":"gold"}
        }
        execute(unless entity @s[nbt={Inventory:[{Slot:103b}]}]){
            item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Creeper\'s Head","color":"gold","italic":false}'},CustomModelData:100005} 1
            clear @s minecraft:carrot_on_a_stick{CustomModelData:100005} 1
        }
    }

    # goat part
    execute as @a[scores={right_clicked=1..}, predicate=part_replace:goat_horn] at @s run{
        scoreboard players remove @s right_clicked 1

        execute(if entity @s[nbt={Inventory:[{Slot:103b}]}]){
            tellraw @s {"text":"Please first remove the existing part", "color":"gold"}
        }
        execute(unless entity @s[nbt={Inventory:[{Slot:103b}]}]){
            item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Goat\'s Horns","color":"gold","italic":false}'},CustomModelData:100006} 1
            clear @s minecraft:carrot_on_a_stick{CustomModelData:100006} 1
        }
    }

    # cow part
    execute as @a[scores={right_clicked=1..}, predicate=part_replace:cow_udder] at @s run{
        scoreboard players remove @s right_clicked 1

        execute(if entity @s[nbt={Inventory:[{Slot:103b}]}]){
            tellraw @s {"text":"Please first remove the existing part", "color":"gold"}
        }
        execute(unless entity @s[nbt={Inventory:[{Slot:103b}]}]){
            item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Cow\'s Udder","color":"gold","italic":false}'},CustomModelData:100007} 1
            item replace entity @s armor.chest with chainmail_chestplate{display:{Name:'{"text":"Cow\'s Udder","color":"gold","italic":false}'},CustomModelData:100007} 1
            clear @s minecraft:carrot_on_a_stick{CustomModelData:100007} 1
            clear @s minecraft:carrot_on_a_stick{CustomModelData:200002}
            give @s carrot_on_a_stick{display:{Name:'{"text":"Shoot Poison Milk","italic":false}'}, CustomModelData:200002}
        }
    }

    # dolphin part
    execute as @a[scores={right_clicked=1..}, predicate=part_replace:dolphin_fin] at @s run{
        scoreboard players remove @s right_clicked 1

        execute(if entity @s[nbt={Inventory:[{Slot:103b}]}]){
            tellraw @s {"text":"Please first remove the existing part", "color":"gold"}
        }
        execute(unless entity @s[nbt={Inventory:[{Slot:103b}]}]){
            item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Dolphin\'s Fins","color":"gold","italic":false}'},CustomModelData:100008} 1
            clear @s minecraft:carrot_on_a_stick{CustomModelData:100008} 1
        }
    }

    # spider part
    execute as @a[scores={right_clicked=1..}, predicate=part_replace:spider_leg] at @s run{
        scoreboard players remove @s right_clicked 1

        execute(if entity @s[nbt={Inventory:[{Slot:103b}]}]){
            tellraw @s {"text":"Please first remove the existing part", "color":"gold"}
        }
        execute(unless entity @s[nbt={Inventory:[{Slot:103b}]}]){
            item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Spider\'s Legs","color":"gold","italic":false}'},CustomModelData:100010} 1
            clear @s minecraft:carrot_on_a_stick{CustomModelData:100010} 1
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
predicate enderman_head{
	"condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "equipment": {
            "mainhand": {
                "item": "minecraft:carrot_on_a_stick",
                "nbt": "{CustomModelData:100004}"
            }
        }
    }
}
predicate creeper_head{
	"condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "equipment": {
            "mainhand": {
                "item": "minecraft:carrot_on_a_stick",
                "nbt": "{CustomModelData:100005}"
            }
        }
    }
}
predicate goat_horn{
	"condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "equipment": {
            "mainhand": {
                "item": "minecraft:carrot_on_a_stick",
                "nbt": "{CustomModelData:100006}"
            }
        }
    }
}
predicate cow_udder{
	"condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "equipment": {
            "mainhand": {
                "item": "minecraft:carrot_on_a_stick",
                "nbt": "{CustomModelData:100007}"
            }
        }
    }
}
predicate dolphin_fin{
	"condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "equipment": {
            "mainhand": {
                "item": "minecraft:carrot_on_a_stick",
                "nbt": "{CustomModelData:100008}"
            }
        }
    }
}
predicate spider_leg{
	"condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "equipment": {
            "mainhand": {
                "item": "minecraft:carrot_on_a_stick",
                "nbt": "{CustomModelData:100010}"
            }
        }
    }
}