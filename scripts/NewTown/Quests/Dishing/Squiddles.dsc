Squiddles:
  Type: Assignment
  Interact Scripts:
  - 1 SquiddleQuest

SquiddleQuest:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[hasRod]> OR <player.flag[fixedRod]> or <player.flag[fishDone]>:
          - narrate "<&e><&l>Squiddles is enjoying his cake too much to talk"

        - else if <player.flag[rodStarted]> && <player.inventory.qty[cake]> > 0:
          - chat "<&e><&l>SQUIDDLES LUVS CAKES"
          - take cake
          - execute as_op "i fishingrod 1 name:Rod_of lore:Broken"
          - narrate "<&e><&l>Squiddles gets so excited about the cake he drops a fishing rod.... It's broken"
          - flag hasRod
          - flag rodStarted:!

        - else if <player.flag[rodStarted]>:
          - chat "<&e><&l>I R SQIDDLES! SQUIDDLES WANTS..... CAKE O<&co>"

        - else:
          - chat "<&e><&l>Just squiddles"
