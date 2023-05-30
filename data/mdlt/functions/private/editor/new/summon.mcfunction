#> mdlt:private/editor/new/summon

## prevent further raycast
scoreboard players set #temp mdlt.data -1

## edit the item_display
# data merge entity @s {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["mdlt_model", "mdlt_armorstand"]}
data merge entity @s {interpolation_duration:0, item_display:"head", Tags:["mdlt_model", "mdlt_itemdisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.5f,0f],scale:[1f,1f,1f]}}

item replace entity @s container.0 from entity @a[tag=temp_player,limit=1] weapon.offhand


## attribute id
scoreboard players operation @s mdlt.model.id = .nextid mdlt.model.id

scoreboard players add .nextid mdlt.model.id 1


## select itself
function mdlt:private/editor/select/syncid

# visiuals
function mdlt:private/models/visuals/temp_glow

# tellraw
tellraw @a[tag=temp_player] [{"text": "[","color": "dark_gray"},{"text": "MDLT", "color": "#0393fd"},{"text": "] "},{"text": "Model summoned ","color": "green"},{"text": "(id:"},{"score":{"name":"@s","objective":"mdlt.model.id"}},{"text":"). "},{"text":"This model have been automatically selected.", "color": "yellow"}]
