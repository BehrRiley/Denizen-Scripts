Rapist:
  Type: Assignment
  Interact Scripts:
  - 1 Rapey
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:5
      - flag npc windowSpot:<npc.locaton>
    On Enter Proximity:
      - run script:FoodAsk

FoodAsk:
  Type: Task
  Script:
    - chat "<&e><&l>Hey <player.name>! Yeah you.... I'm hungry! Give me some stew Bitch!"

FoodThrow:
  Type: World
  Events:
    On Player Drops mushroom_soup:
      - if <player.location.regions.contains[rapist]> && <context.item.lore.first.if_null[invalid]> == BoomBoom:
        - remove <context.entity>
        - run script:BoomTake as:81 delay:1s

      - else if <player.location.regions.contains[rapist]>:
        - run script:FoodTake as:81 delay:1s


FoodTake:
  Type: Task
  Script:
    - remove <npc.location.find.entities[dropped_item].within[2].get[2]>
    - narrate "<&4><&l>The rapist takes the stew"
    - chat "<&e><&l>Thanks!"
    - playsound eat <player>

BoomTake:
  Type: Task
  Script:
    - remove <npc.location.find.entities[dropped_item].within[2]>
    - narrate "<&4><&l>The rapist takes the stew"
    - chat "<&e><&l>Thanks!"
    - playsound eat <player>
    - run script:BoomBoom delay:3s

BoomBoom:
  Type: task
  Script:
    - narrate "<&4><&l>The Rapist doesn't look so good"
    - chat "<&e><&l>Oh shit.... That stew... I GOTTA GO BOOM BOOM"
    - ~walk <npc.flag[toiletSpot]> auto_range
    - animate <npc> sit
    - playsound burp <player>
    - playsound chicken_egg_pop <player>
    - playsound burp <player>
    - playsound chicken_egg_pop <player>
    - drop cocoa_beans[display_name=Precious;lore=BoomBoom] <npc.flag[boomSpot]>
    - run script:DoneBoom delay:3s

DoneBoom:
  Type: Task
  Script:
    - animate <npc> stop_sitting
    - chat "<&e><&l>That was unpleasant..."
    - walk <npc.flag[windowSpot]> auto_range
