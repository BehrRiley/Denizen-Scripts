BoomBoomItem:
  Type: World
  Events:
    On Player Consumes mushroom_soup:
      - if <context.item.lore> == lBoomBoom && <player.flag[wifeDone]>:
        - narrate "<&4><&l>Uh oh... BOOM BOOM"
        - cast confusion duration:10s
        - cast slow duration:10s
        - run script:MakeBoomBoom delay:9s
      - else if <context.item.lore> == lBoomBoom :
        - narrate "You don't wanna eat this...."
        - determine cancelled

MakeBoomBoom:
  Type: Task
  Script:
    - playsound chicken_egg_pop <player>
    - drop cocoa_beans[display_name=<player.name>s;lore=BoomBoom]
