Destrian:
  Type: Assignment
  Interact Scripts:
  - 1 DestrianQuest
DestrianQuest:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[CoxStart]>:
          - chat "How's It Going?"

        - else if <player.flag[KnifeGather]> && <player.inventory.qty[359]> > 0 && <player.item_in_hand.lore> == lHardened:
          - chat "That's exactly what I needed! Here take this Knife and give it to CaptainCox."
          - execute as_server "give <player.name> 359 1 name:CombatKnife lore:CoxsKnife"
          - flag CombatKnife
          - flag KnifeGather:!
          - flag CoxDextrian:!
          - flag CoxDestrian:!

        - else if <player.flag[KnifeGather]>:
          - chat "I need you to get me a set of shears and a hard diamond. Which is gained by cooking a diamond in a furnace."

        - else if <player.flag[CoxDestrian]> && <player.mcmmo.level[Swords]> > 200:

          - chat "So Captain Cox sent you here? Well I've been working on the Combat Knife. I just need some Ingedients."
          - flag KnifeGather

        - else if <player.flag[CoxDestrian]>:
          - chat "Captain Cox sent you? I nee a little bit more skilled of a swordsman for this task..."

        - else if <player.flag[CombatKnife]>:
          - chat "Take the knife to CaptainCox"

        - else:
          - chat "I dont know you"
