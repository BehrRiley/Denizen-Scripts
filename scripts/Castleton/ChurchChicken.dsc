ChurchChicken:
  Type: Assignment
  Interact Scripts:
  - 1 ChickenBoomBoom

ChickenBoomBoom:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.item_in_hand.lore> == lBoomBoom:
          - take iteminhand
          - narrate "<&4><&l>The Chicken Eats the Stew.... It doesn't look very healthy"
          - wait 3
          - narrate "<&4><&l>The Chicken lays an egg"
          - drop egg[display_name=Egg;lore=Quality] <npc.location>

        - else if <player.flag[gotEggs]> OR <player.flag[cakeDone]>:
          - narrate "<&4><&l>This chicken looks relieved"

        - else:
          - narrate "<&4><&l>This chicken hasn't laid eggs in years"
