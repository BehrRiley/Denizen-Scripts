Archer:
  Type: Assignment
  Interact Scripts:
  - 1 ArcherQuest
ArcherQuest:
  Type: Interact
  Requirements:
    Mode: None
    Requirements:
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[CoxStart]> && <player.location.world.time.period>  == day:
          - chat "How's It Going?"

        - else if <player.flag[CoxStart]>:
          - chat "I don't know you..."

        - else if <player.flag[DartGather]> && <player.location.world.time.period>  == day && <player.inventory.qty[368]> > 9 && <player.inventory.qty[262]> > 9:
          - chat "That's exactly what I needed! Here take this Dart and give it to CaptainCox."
          - execute as_server "give <player.name> 262 1 name:Dart lore:CoxsDart"
          - flag Dart
          - flag DartGather:!
          - flag Archer:!

        - else if <player.flag[DartGather]> && <player.location.world.time.period>  == day:
          - chat "I need you to get me 10 EnderPearls and 10 Arrows. Should be enough to perfect this Dart."

        - else if <player.flag[Archer]> && <player.location.world.time.period>  == day && <player.mcmmo.level[Archery]> > 200:
          - chat "So Captain Cox sent you here? Well I've been working on the Darts. I just need some Ingedients to Finish it."
          - flag DartGather

        - else if <player.flag[Archer]> && <player.location.world.time.period>  == day:
          - chat "Captain Cox sent you? I nee a little bit more skilled of a archer for this task..."

        - else if <player.flag[Dart]> && <player.location.world.time.period>  == day:
          - chat "Take the Dart to CaptainCox"
        - else if <player.location.world.time.period> == day:
          - chat "I don't know you"
        - else:
          - chat "snore"
