ParachuteListen:
  Type: World
  Events:
    On Player Right Clicks with string:
      - if <player.location.add[0,-1,0].material> == air && <player.location.add[0,-50,0].material> == air && <player.flag[parachuteTimer]> == null:
        - flag ParachuteCount:++
        - flag ParachuteTimer duration:5s
        - narrate "<&2><&l>Current Parachute Count<&co> <&1><&l><player.flag[ParachuteCount]>"
