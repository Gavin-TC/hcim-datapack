tellraw @a ["",{"text":"HCIM has been loaded.","color":"green"}]
scoreboard objectives add HCIMDeaths deathCount
scoreboard objectives add GlobalHCIMDeaths deathCount

team add NoDeaths
team join NoDeaths @s

scoreboard players set @s GlobalHCIMDeaths 0 