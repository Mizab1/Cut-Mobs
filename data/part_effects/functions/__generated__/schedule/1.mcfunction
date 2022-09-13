#built using mc-build (https://github.com/mc-build/mc-build)

execute as @a if entity @s[tag=xray_vision] run tag @s remove xray_vision
tp @e[type=shulker, tag=highlight] ~ ~-600 ~