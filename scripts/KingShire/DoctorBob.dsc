DoctorBob:
  Type: Assignment
  Interact Scripts:
  - 1 DoctorQuest
DoctorQuest:
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

        - else if <player.flag[CoxStart]>:
          - chat "I don't know you..."

        - else if <player.flag[HealGather]> && <[player.item_in_hand.lore> == lHealing:
          - chat "That's exactly what I needed! Here take this Spell and give it to CaptainCox."
          - execute as_server "give <player.name> 353 1 name:MagicSpell lore:CoxsSpell"
          - flag HealSpell
          - flag HealGather:!
          - flag Doctor:!

        - else if <player.flag[HealGather]>:
          - chat "I need you to mix together in a cauldron a snowball, an apple and a diamond. If my research is correct it will create a healing potion!"

        - else if <player.flag[Doctor]> && <player.mcmmo.level[Herbalism]> > 200:
          - chat "So Captain Cox sent you here? Well I've been working on a Healing Spell. I just need some Ingedients to Finish it."
          - flag HealGather
          - execute as_server "pex user <player.name> add craftbook.mech.cauldron.recipe.HealSpell"

        - else if <player.flag[Doctor]>:
          - chat "Captain Cox sent you? I nee a little bit more skilled of a Herbalist for this task..."

        - else if <player.flag[HealSpell]>:
          - chat "Take the HealSpell to CaptainCox"
