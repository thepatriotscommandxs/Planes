summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["workbench"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:bat_spawn_egg",Count:1b,tag:{CustomModelData:1002}}]}
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Engineering Table"}'}
kill @s
playsound block.stone.place master @a[distance=..5]
