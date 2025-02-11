BlackSmith:
  Type: Assignment
  Interact Scripts:
  - 2 BlacksmithFix

BlacksmithFix:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
          - if <player.item_in_hand.lore> == lBroken:
            - chat "<&e><&l>Hey there FrankFisher told me you were coming.... That rod shouldn't be too easy to fix..."
            - take iteminhand
            - narrate "<&e><&l>The BlackSmith takes the fishing rod and fixes it easily"
            - chat "<&e><&l>Take that back to Frank.... Should be in working order now... I don't want to know what he's trying to catch with it"
            - execute as_op "i fishingrod 1 name:Rod_of lore:Dick"
            - flag hasRod:!
            - flag fixedRod

          - else:
            - chat "<&e><&l>Hello <player.name> would you like be to fix your items? Only 10,000 for your whole inventory!"

      Chat Trigger:
        1:
          Trigger: /Yes/ I want you to fix my things
          Script:
          - if <player.money> > 9999:
            - chat "<&e><&l>Alright"
            - narrate "<&e><&l>The blacksmith takes your things and repairs them"
            - execute as_op "fix all"

          - else:
            - chat "<&e><&l>You don't have enough money"
            - narrate "<&e><&l>Repair Cost<&co> 10,000"
            - narrate "<&e><&l>Your Money<&co> <player.money>"
        2:
          Trigger: /No/ I don't want you to fix my things
          Script:
          - chat "<&e><&l>Well okay. Come back if you need your things repaired."
