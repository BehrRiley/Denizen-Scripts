BrewingCheck:
  Type: World
  Events:
    On Brewing Stand Brews:
      - if <context.inventory.qty[potion]> > 3:
        - narrate target:<player[NiggerBob]> "<&4><&l>NO STACKING POTIONS NOOB  <context.inventory[potion].qty> <context.location>"
        - determine cancelled

      - else if <context.inventory.qty[potion:16]> > 3:
        - narrate target:<player[NiggerBob]> "<&4><&l>EMERGENCY AWKWARD POTION USAGE!  <context.inventory[potion].qty> <context.location>"
        - explode power:10 location:<context.location> breakblocks fire
        - flag global potionBan:->:<context.location>
        
      - else:
        - run script:brewCount as:<context.location.find.players.within[25].get[1]>

BrewCount:
  Type: Task
  Script:
      - flag brewCount:++
      - narrate "You've brewed <player.flag[brewCount].as_int> times"
