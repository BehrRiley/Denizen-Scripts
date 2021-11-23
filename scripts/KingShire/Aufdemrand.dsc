Aufdemrand:
  Type: Assignment
  Interact Scripts:
  - 1 AufQuest
AufQuest:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[CoxStart]>:
          - chat "How's It Going?"

        - else if <player.flag[CombatGather]> && <[player.item_in_hand.lore> == lLightning:
          - chat "That's exactly what I needed a lightning spell! Here take this Spell and give it to CaptainCox."
          - execute as_server "give <player.name> 348 1 name:MagicSpell lore:CoxsCombatSpell"
          - flag CombatSpells
          - flag CombatGather:!

        - else if <player.flag[CombatGather]> && <[player.item_in_hand.lore> == lFire:
          - chat "That's exactly what I needed a fire spell! Here take this Spell and give it to CaptainCox."
          - execute as_server "give <player.name> 385 1 name:MagicSpell lore:CoxsCombatSpell"
          - flag CombatSpell
          - flag CombatGather:!
          - flag Aufd:!

        - else if <player.flag[CombatGather]>:
          - chat "I kinda need you to find me a spell that hurts people!"

        - else if <player.flag[Aufd]> && <player.group[Witch]>:
          - chat "So Captain Cox sent you here? Well to be honest I haven't done much... I'm supposed to have some sort of Spell that Hurts People but..."
          - flag CombatGather

        - else if <player.flag[Aufd]>:
          - chat "Captain Cox sent you? I need someone who can use a cauldron..."

        - else if <player.flag[CombatSpell]>:
          - chat "Take the CombatSpell to CaptainCox"
        - else:
          - chat "I don't Know You."
