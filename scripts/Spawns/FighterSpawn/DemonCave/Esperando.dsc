Esperando:
  Type: Assignment
  Interact Scripts:
  - 1 DemonCave

DemonCave:
  Type: Interact
  Requirements: 
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.equipment.helmet.lore> == lDemonHelmet:
          - chat "Good luck inside!"
          - switch location:<server.flag[DemonLever]> state:on duration:5s

        - else:
          - chat "Whoah <player.name> you won't be able to fight the Demonytes with that on your head. You'll need a special helmet to go inside."
          - narrate "Say More to learn more about the special helmet"

      Chat Trigger:
        1:
          Trigger: Please tell me /more/
          Script:
            - chat "You'll need a Demon Helmet. You can get one of these by sacrificing a Demonyte head on an altar with 3 cows leashed to a fence. Of course... I am selling some heads"
            - narrate "Saying Buy will purchase a Demonyte head for $20,000"
        2:
          Trigger: I'd like to /buy/ a Demonyte head.
          Script:
            - if <player.money> > 19999:
              - chat "That's good to hear!"
              - execute as_op "ph spawn Demonyte"
              - take money qty:20000
              - narrate "You receive a Demonyte head"

            - else:
              - chat "You don't have enough money to buy one of these heads.... Maybe you should go play with the PeePeeBandits"
