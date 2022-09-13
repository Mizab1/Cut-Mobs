recipe scissors{
    "type": "minecraft:crafting_shaped",
    "pattern": [
        "# #",
        " # ",
        "O O"
    ],
    "key": {
        "#": {
            "item": "minecraft:iron_ingot"
        },
        "O": {
          "item": "minecraft:oak_planks"
        }
    },
    "result": {
        "item": "minecraft:knowledge_book",
        "count": 1
    }
}
advancement scissors_adv{
    "criteria": {
        "Unlocked": {
            "trigger": "minecraft:recipe_unlocked",
            "conditions": {
                "recipe": "recipes:scissors"
            }
        }
    },
    "rewards": {
        "function": "recipes:crafted_scissors"
    }
}
function crafted_scissors{
    # Takes back the recipe so it can be crafted again
    recipe take @s recipes:scissors
    advancement revoke @s only recipes:scissors_adv
    # Clear the knowledge book from inventory
    clear @s minecraft:knowledge_book

    function cut_mob:give_scissors
}