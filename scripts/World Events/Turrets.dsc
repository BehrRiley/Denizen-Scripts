Turret:
  Type: World
  Events:
    On Player Right Clicks With Arrow:
      - if <player.location.find.blocks[fence].within[1].size> > 2 <player.location.find.blocks[chest].within[1].size> > 0:

        - if <player.location.find.blocks[chest].within[2].get[1].as_location.inventory.qty[arrow]> > 0:

          - if <player.flag[turretStarted]> OR <player.flag[turretDone]>:
            - execute as_op "fireball arrow"
            - playsound shoot_arrow <player.location>
            - take arrow qty:1 from:<player.location.find.blocks[chest].within[2].get[1].as_location.inventory>

          - else:
            - narrate "You don't know how to operate this"

        - else:
          - narrate "<&4><&l>The turret is out of ammo!"
