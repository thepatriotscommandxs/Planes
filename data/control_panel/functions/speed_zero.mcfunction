scoreboard players add @s speed_toggle 1
execute if score @s speed_toggle matches 3.. run scoreboard players set @s speed_toggle 0
kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:3b}}}]
execute if score @s speed_toggle matches 0 run tellraw @s [{"text":"[Debug]: ","color":"yellow","bold":true,"italic":false},{"text":"Throttle: 100%","color":"white","bold":false,"italic":false}]
execute if score @s speed_toggle matches 1 run tellraw @s [{"text":"[Debug]: ","color":"yellow","bold":true,"italic":false},{"text":"Throttle: 60%","color":"white","bold":false,"italic":false}]
execute if score @s speed_toggle matches 2 run tellraw @s [{"text":"[Debug]: ","color":"yellow","bold":true,"italic":false},{"text":"Throttle: 20%","color":"white","bold":false,"italic":false}]
item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flight Stick"}'},CustomModelData:1001,PlaneConsole:1b,PlaneID:3b} 1
