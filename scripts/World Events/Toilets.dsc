ToiletCheck:
  Type: World
  Events:
    On Player Right Clicks Cauldron:
      - if <context.location.find.blocks[trap_door].within[1].size> > 0:

        - if <player.flag[preciousDone]>:
          - narrate "<&e><&l>You hop inside the toilet with all the dookie and flush it... After an enjoyable ride you end up here... This looks fun"
          - playsound splash <player>
          - teleport <player> <server.flag[sewerPark]>

        - else:
          - narrate "<&e><&l>The toilet flushes your dookie away...."
          - playsound splash <player>
