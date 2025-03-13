execute as @a[scores={HCIMDeaths=1, GlobalHCIMDeaths=1}] run title @s title {"text": "Hardcore status lost!", "color": "red"}
execute as @a[scores={HCIMDeaths=1, GlobalHCIMDeaths=1}] run playsound minecraft:entity.wither.death hostile @s
execute as @a[scores={HCIMDeaths=1, GlobalHCIMDeaths=1}] run team remove NoDeaths

execute as @a[scores={HCIMDeaths=1..}] run scoreboard players set @a HCIMDeaths 0
execute as @e[gamemode=spectator] as @a[scores={HCIMDeaths=0}] run gamemode survival