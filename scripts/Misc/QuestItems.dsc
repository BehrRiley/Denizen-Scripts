Rainbottle:
  Type: Task
  Script:
    - ^if <player.location.world.has_storm> {
      - ^weather sunny world:world
      - narrate "You have bottled the storm!"
      - execute as_server "give <player.name> waterbottle 1 name:Bottle_of_Rain lore:Ingredient"
    - else:
      - narrate "The bottle was consumed there is no rain...."
DayClock:
  Type: Task
  Script:
    - if <player.location.world.time_day>:
      - narrate "It has become day!"
      - execute as_server "time set day"
    - else:
      - narrate "You have wasted your clock.... It is already day time."
Dildo:
  Type: Task
  Script:
    - playsound location:<player.location> sound:ghast_scream volume:6
    - playsound location:<player.location> sound:slime_walk volume:6
ShotGun:
  Type: Task
  Script:
    - playsound location:<player.location> sound:Explode volume:2
HealSpell:
  Type: Task
  Script:
    - cast heal duration:1s power:1
SoundMaker:
  Type: Task
  Script:
    - playsound location:<player.location> sound:Eat volume:2
Nikes:
  Type: Task
  Script:
    - engage
    - narrate "<&e><&l>You Open The List and Read the Recipe To Some Sick Ass Shoes"

    - if <player.flag[NikePieces]>:

    - else:
      - flag RecipeHas

    - if <player.flag[PirateBoots]>:
      - narrate "<&4><&m>1. Set of some sick ass Pirate boots mah Nig."

    - else:
      - narrate "<&a>1. Set of some sick ass Pirate boots mah Nig."

    - if <player.flag[PirateGold]>:
      - narrate "<&4><&m>2. Sick ass Metallic Color For Dem Nikes"

    - else:
      - narrate "<&a>2. Sick ass Metallic Color For Dem Nikes"

    - if <player.flag[laces]>:
      - narrate "<&4><&m>3. Some of da finest ass laces to keep dem kicks tight."

    - else:
      - narrate "<&a>3. Some of da finest ass laces to keep dem kicks tight."
    - disengage

QuestJournal:
  Type: Task
  Script:
    - narrate "<&e><&l>You Open Up Your Quest Book..."

    - if <player.has_permission[TownComplete1]>:
      - narrate "<&a><&m>1. Pumpkins and Submarines"
    - else:
      - narrate "<&4>1. Pumpkins and Submarines"

    - if <player.in_group[complete]>:
      - narrate "<&a><&m>2. Helping Hans"
    - else:
      - narrate "<&4>2. Helping Hans"

    - if <player.has_permission[GnomeComplete]>:
      - narrate "<&a><&m>3. Trouble in TreeTown"
    - else:
      - narrate "<&4>3. Trouble in TreeTown"

    - if <player.has_permission[craft.horsearmor]>:
      - narrate "<&a><&m>4. I R Horse"
    - else:
      - narrate "<&4>4. I R Horse"

    - if <player.has_permission[essentials.warps.KingShire]>:
      - narrate "<&a><&m>5. In Search of Fowchoon"
    - else:
      - narrate "<&4>5. In Search of Fowchoon"

    - if <player.in_group[CookieGuard]>:
      - narrate "<&a><&m>6. Moar Weaponz"
    - else:
      - narrate "<&4>6. Moar Weaponz"

    - if <player.in_group[Witch]>:
      - narrate "<&a><&m>7. Zahmbies and Witches"
    - else:
      - narrate "<&4>7. Zahmbies and Witches"

    - if <player.in_group[Pirate]>:
      - narrate "<&a><&m>8. Yo Nikes"
    - else:
      - narrate "<&4>8. Yo Nikes"
DivingHelmet:
  Type: Task
  Script:
    - if <player.in_group[Pirate]>:
      - narrate "<&b><&l>Air Full"
      - cast effect:WATER_BREATHING duration:120s power:10
      - run script:AirWarning delay:110s

    - else:
      - narrate "You aren't a Pirate"
    - if <player.in_group[Pirate]>:
      - narrate "<&b><&l>Batteries Full"
      - cast effect:NIGHT_VISION DURATION:160s power:10
      - run script:LightWarning delay:140s

    - else:
      - narrate "You aren't a Pirate"
AirWarning:
  Type: Task
  Script:
    - if <player.in_group[Pirate]> && <player.equipment.helmet.lore> == lPirate:
      - narrate "<&4><&l>Air Will Run Out in 10 Seconds Please hold an Oxygen Tank to Refill."
      - run script:AirRefill delay:10s

    - else:
      - narrate "You have taken off your helmet"
AirRefill:
  Type: task
  Script:
  - if <player.in_group[Pirate]> && <player.item_in_hand.lore> == lOxygen:
    - take iteminhand
    - narrate "<&b><&l>Oxygen Refilled"
    - cast effect:WATER_BREATHING duration:120s power:10
    - run script:AirWarning delay:110s

  - else:
    - narrate "Oxygen Depletion Iminent"
LightWarning:
  Type: Task
  Script:
    - if <player.in_group[Pirate]> && <player.equipment.helmet.lore> == lPirate:
      - narrate "<&4><&l>Battery Will Run Out in 10 Seconds Please hold a Battery to Recharge."
      - run script:LightRefill delay:10s

    - else:
      - narrate "You have taken off your helmet"
LightRefill:
  Type: task
  Script:
    - if <player.in_group[Pirate]> && <player.item_in_hand.lore> == lPower:
      - take iteminhand
      - narrate "<&b><&l>Battery Recharged"
      - cast effect:NIGHT_VISION duration:160s power:10
      - run script:AirWarning delay:140s

    - else:
      - narrate "Battery Depletion Iminent"
DispelPotion:
  Type: task
  Script:
    - cast Night_Vision remove
    - cast Invisibility remove
    - cast FIRE_RESISTANCE remove
    - cast DAMAGE_RESISTANCE remove
    - cast POISON remove
    - cast SLOW remove
    - cast SPEED remove
    - cast water_breathing remove
    - cast weakness remove
    - cast regeneraton remove
Dice:
  Type: Task
  Script:
    - narrate "You roll the dice"
    - flag DiceOutcome:<util.random.int[1].to[6]>
    - wait 1
    - narrate "You have rolled a <player.flag[DiceOutcome]>"

DiceInteract:
  Type: task
  Script:
    - cooldown global duration:20s
    - narrate "Script Started"
    - flag DiceOutcome:!
    - flag global DiceBet:1000
    - flag global ChallengerName:<player.name>
    - wait 1

    - if <player.money> >= <server.flag[DiceBet]> && <player.flag[DiceBet]> > 0 && !<player.flag[Challenger]> && !<player.flag[Challenged]>:
      - flag DiceBet:<server.flag[DiceBet]>
      - flag Opponent:<server.flag[ChallengedName]>
      - flag Challenger
      - wait 1
      - narrate "You have challenged <player.flag[Opponent]> with a bet of <player.flag[DiceBet]>"
      - run script:NoAccept i:NoAccept delay:20s
      - wait 1
      - flag global DiceBet:!

    - else if <player.money> < <server.flag[DiceBet]> && <player.flag[DiceBet]> > 0 && !<player.flag[Challenger]>:
      - narrate "You don't have enough Money for That Bet."

    - else if <player.money> < <server.flag[DiceBet]> && <player.flag[DiceBet]> > 0 && !<player.flag[Challenger]>:
      - narrate "That is not a Valid Bet"

    - else if <player.money> >= <server.flag[DiceBet]> && <player.flag[Challenged]>:
      - narrate "You have accepted the challenge. Please roll your dice."
      - flag Challenged:!
    - else:
      - narrate "nothing happend"
DiceInteracted:
  Type: task
  Script:
    - cooldown global duration:20s
    - narrate "Script Started"
    - flag DiceOutcome:!
    - flag global ChallengedName:<player.name>
    - wait 1

    - if <player.flag[Challenger]>:
      - narrate "Challenge Accepted Please Roll Your Dice."
      - queue clear NoAccept
      - run DiceOutcome delay:20s
      - flag Challenger:!

    - else if <player.money> >= <server.flag[DiceBet]> && !<player.flag[Challenged]>:
      - flag DiceBet:<server.flag[DiceBet]>
      - wait 1
      - flag opponent:<server.flag[ChallengerName]>
      - wait 1
      - narrate "You have been challenged by <player.flag[Opponent]> with a bet of <player.flag[Dicebet]>"
      - flag Challenged
      - run script:NoAccept i:NoAccept delay:20s
      - flag global ChallengerName:!
      - flag global ChallengedName:!

    - else:
      - narrate "nothing happend"
DiceOutCome:
  Type: Task
  Script:
    - if <player[<player.flag[opponent]>].flag[DiceOutcome]> == null:
      - run ChallengedNull
      - narrate "Your Opponent did not roll in time."

    - if <player[<player.flag[opponent]>].flag[DiceOutcome]> == null && <player.flag[DiceOutcome]> == null:
      - narrate "Neither Player Rolled in Time"
      - wait 2
      - flag Opponent:!
      - flag DiceBet:!

    - else if !<player[<player.flag[opponent]>].flag[DiceOutcome]> && <player.flag[DiceOutcome]>:
      - run DiceVictory

    - else if <player[<player.flag[opponent]>].flag[DiceOutcome]> && !<player.flag[DiceOutcome]>:
      - run DiceVictory
      - wait 2
      - flag Opponent:!
      - flag DiceBet:!

    - else if <player.flag[DiceOutCome]> > <player[<player.flag[opponent]>].flag[DiceOutcome]>:
      - run DiceVictory

    - else if <player.flag[DiceOutCome]> < <player[<player.flag[opponent]>].flag[DiceOutcome]>:
      - run DiceVictory
      - narrate "You have lost"
      - wait 2
      - flag Opponent:!
      - flag DiceBet:!

    - else if <player.flag[DiceOutCome]> == <player[<player.flag[opponent]>].flag[DiceOutcome]>:
      - narrate "You have tied! Roll Again."
      - flag DiceBet:!
      - run DiceOutCome delay:10s
    - else:
      - narrate "OutCome Failure"
DiceVictory:
  Type: Task
  Script:
    - narrate "You have won <player.flag[DiceBet]> from <player.flag[Opponent]>!"
    - execute as_server "eco take <player.flag[Opponent]> <player.flag[DiceBet]>"
    - execute as_server "eco give <player.name> <player.flag[DiceBet]>"
    - wait 2
    - flag DiceBet:!
    - flag Opponent:!
NoAccept:
  Type: Task
  Script:
    - narrate "The challenge was not accepted"
    - flag challenged:!
    - flag challenger:!
    - flag opponent:!
    - flag dicebet:!
ChallengedNull:
  Type: Task
  Script:
    - narrate "You did not roll in time"
