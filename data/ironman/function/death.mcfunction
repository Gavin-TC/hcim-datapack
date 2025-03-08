execute as @a[scores={HCIMDeaths=1, GlobalHCIMDeaths=1}] run title @s title {"text": "Hardcore status lost!", "color": "red"}
execute as @a[scores={HCIMDeaths=1, GlobalHCIMDeaths=1}] run playsound minecraft:entity.wither.death hostile @s
execute as @a[scores={HCIMDeaths=1, GlobalHCIMDeaths=1}] run team remove NoDeaths

# After death advancements (can't seem to trigger these on ANY death, so doing this manually has to work for now)
execute if score gavintc GlobalHCIMDeaths matches 1.. run advancement grant @s only ironman:after_death/root
execute if score gavintc GlobalHCIMDeaths matches 2.. run advancement grant @s only ironman:after_death/two_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 5.. run advancement grant @s only ironman:after_death/five_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 10.. run advancement grant @s only ironman:after_death/ten_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 25.. run advancement grant @s only ironman:after_death/twentyfive_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 50.. run advancement grant @s only ironman:after_death/fifty_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 100.. run advancement grant @s only ironman:after_death/hundred_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 200.. run advancement grant @s only ironman:after_death/twohundred_total_deaths
execute if score gavintc GlobalHCIMDeaths matches 500.. run advancement grant @s only ironman:after_death/fivehundred_total_deaths

execute as @a[scores={HCIMDeaths=1..}] run scoreboard players set @a HCIMDeaths 0
execute as @e[gamemode=spectator] as @a[scores={HCIMDeaths=0}] run gamemode survival