#> mdlt:private/handler/init


## scoreboard
# main data
scoreboard objectives add mdlt.data dummy

# player data
scoreboard objectives add mdlt.player.dataversion dummy

scoreboard objectives add mdlt.player.cycle dummy

scoreboard objectives add mdlt.model.id dummy
execute unless score .nextid mdlt.model.id matches 0.. run scoreboard players set .idnext mdlt.model.id 0

# wrenchs detection
scoreboard objectives add mdlt.click.carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add mdlt.click.warped minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard players reset * mdlt.click.carrot
scoreboard players reset * mdlt.click.warped


# sneak detection
scoreboard objectives add mdlt.sneak minecraft.custom:minecraft.sneak_time
scoreboard players reset * mdlt.sneak


# schedules
scoreboard objectives add mdlt.schedules.glow dummy
scoreboard players reset * mdlt.schedules.glow
scoreboard players set .t mdlt.schedules.glow 0