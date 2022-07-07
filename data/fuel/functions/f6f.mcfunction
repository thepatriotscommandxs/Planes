item replace entity @s weapon.mainhand with minecraft:air 1
playsound entity.cow.milk master @a[distance=..5]
scoreboard players add @s f6f_fuel 10
particle landing_honey ~ ~2 ~ 0 0 0 0.2 10 normal
execute as @s at @s if entity @s[scores={f6f_fuel=2510..}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:charcoal",Count:1b,tag:{display:{Name:'{"text":"Fuel","italic":false}'},CustomModelData:1001}}}
execute as @s at @s if entity @s[scores={f6f_fuel=2510..}] run scoreboard players set @s f6f_fuel 2500
