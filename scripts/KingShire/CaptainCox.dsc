CaptainCox:
  Type: Assignment
  Interact Scripts:
  - 1 CoxQuest
  - 2 CookieGuard
CoxQuest:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - engage
        - if <player.flag[WeaponDuring]> && <player.flag[CookieTemp]>:
          - chat "I AM CAPTAIN COX. Fear Me! I heard you are a mighty quester! A retriever of da Fowtoon Cookie. I have a task for you!"
          - flag CookieTemp:!
          - flag CoxStart

        - else if <player.flag[CoxStart]>:
          - chat "I have instructed people around town to work on a new set of weapons to defend against Cookie Marauders..."
          - flag CoxStart:!
          - flag CoxDestrian

        - else if <player.flag[CoxDestrian]>:
          - chat "I need you to go see Destrian. He's working on a new blade... He lives on the edge of town. Leave the castle and take a right."

        - else if <player.flag[CombatKnife]> && <player.item_in_hand.lore> == lCoxsKnife:
          - chat "This is great! A new combat knife for our troops! But I still have work for you..."
          - flag CombatKnife:!
          - flag Archer

        - else if <player.flag[CombatKnife]>:
          - chat "Did you lose my knife?"

        - else if <player.flag[Archer]>:
          - chat "I need you to go see Archer in the WatchTower... He's been working on something."

        - else if <player.flag[Dart]> && <player.item_in_hand.lore> == lCoxsDart:
          - chat "That is the new Dart! Incredible... Archer does great work. But there's still more..."
          - flag Dart:!
          - flag Doctor

        - else if <player.flag[Dart]>:
          - chat "Did you lose my Dart?"

        - else if <player.flag[Doctor]>:
          - chat "I need you to go See DoctorBob, He's been working on a project that will help us in battle."

        - else if <player.flag[HealSpell]> && <player.item_in_hand.lore> == lCoxsSpell:
          - chat "A new spell! That will show those stupid Cookie Marauders who's boss... I still need more from you."
          - flag HealSpell:!
          - flag Aufd

        - else if <player.flag[HealSpell]>:
          - chat "Did you lose my spell?"

        - else if <player.flag[Aufd]>:
          - chat "I need you to go see Aufdemrand... He's our town's Master Wizard. I know he will have something Cool."

        - else if <player.flag[CombatSpell]> && <player.item_in_hand.lore> == lCoxsCombatSpell:
          - chat "Wow a Combat Spell! Aufdemrand is truely a genius! But for you not so smart people... Another task!"
          - flag CombatSpell:!
          - flag Tybalt

        - else if <player.flag[CombatSpell]>:
          - chat "Have you lost Aufdemrand's spell?! You Fool!"

        - else if <player.flag[Tybalt]>:
          - chat "I need you to go see Tybalt.... He's been working on a most important project, and it is needed for our other research to continue."

        - else if <player.flag[Bullet]> && <player.item_in_hand.lore> == lCoxsBullet:
          - chat "That's it! He's finally done it! Quickly go Bring this to Jason! He must see this!"
          - flag Bullet:!
          - flag Jason

        - else if <player.flag[Bullet]>:
          - chat "Have you lost the Bullet!?"

        - else if <player.flag[Rifle]> && <player.item_in_hand.lore> == lCoxsRifle:
          - take 369
          - chat "Incredible.... I can't believe we've done it. We have completed the Rifle!"
          - flag WeaponComplete
          - flag Rifle:!

        - else if <player.flag[Rifle]>:
          - chat "Have you lost the Rifle! He lives right across the street!"

        - else if <player.flag[WeaponComplete]>:
          - engage
          - chat "Thanks for all the help!"
          - run CookieFinishScript

        - else:
          - chat "I don't Know you at all..."
        - disengage
CookieFinishScript:
  Type: Task
  Script:
    - execute as_server "pex group CookieGuard user add <player.name>"
    - chat "You are now an Official Guard of CookieShire! You have access to the Barracks."
    - wait 1
    - narrate "Wow You Have Finished the Quest! You feel like a much better quester!"
    - firework location:<player.location> power:0 type:Random primary:red fade:yellow
    - firework location:<player.location> power:0 type:Random primary:blue fade:purple
    - firework location:<player.location> power:0 type:Random primary:purple fade:pink
    - execute as_server "addcredits <player.name> 50"
    - give money qty:5000
    - give 357 qty:10
    - narrate "Maybe you should go check out the barracks!"
    - firework location:<player.location> power:0 type:Random primary:red fade:yellow
    - firework location:<player.location> power:0 type:Random primary:blue fade:purple
    - firework location:<player.location> power:0 type:Random primary:purple fade:pink
    - disengage
CookieGuard:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup CookieGuard
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Check out the Barracks."
