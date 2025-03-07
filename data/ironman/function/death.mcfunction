execute as @a[scores={HCIMDeaths=1, GlobalHCIMDeaths=1}] run title @s title {"text": "Hardcore status lost!", "color": "red"}
execute as @a[scores={HCIMDeaths=1, GlobalHCIMDeaths=1}] run playsound minecraft:entity.wither.death hostile @s

execute if score gavintc GlobalHCIMDeaths matches 1.. run advancement grant @s only ironman:root
execute if score gavintc GlobalHCIMDeaths matches 5.. run advancement grant @s only ironman:five_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 10.. run advancement grant @s only ironman:ten_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 25.. run advancement grant @s only ironman:twentyfive_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 50.. run advancement grant @s only ironman:fifty_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 100.. run advancement grant @s only ironman:hundred_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 200.. run advancement grant @s only ironman:twohundred_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 500.. run advancement grant @s only ironman:fivehundred_total_deaths

execute as @a[scores={HCIMDeaths=1..}] run scoreboard players set @a HCIMDeaths 0
execute as @e[gamemode=spectator] as @a[scores={HCIMDeaths=0}] run gamemode survival

