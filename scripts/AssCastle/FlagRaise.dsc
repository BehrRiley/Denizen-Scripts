FlagRaise:
  Type: World
  Events:
    On Player Right Clicks Mossy_Stone_Brick:
      - if <player.flag[flagRaiser]> && <player.location.regions.contains[topFlag]>:
        - narrate "<&4><&l>You lower the black flag of the Sandy Bandits..."
        - execute as_op "/schem load noflag"
        - execute as_op "/paste -o"
        - execute as_op "/schem load blueFlag"
        - execute as_op "/paste -o"
        - flag flagRaiser:!
        - flag flagRaised
        
      - else if <player.location.regions.contains[topFlag]>:
        - narrate "<&4><&l>You don't wanna go down taking down others flags"
