Poti:
  Type: Assignment
  Interact Scripts:
  - 18 ^Potion17
  - 19 ^Potion16
  - 19 ^Potion15
  - 19 ^Potion14
  - 19 ^Potion13
  - 19 ^Potion12
  - 19 ^Potion11
  - 19 ^Potion10
  - 19 ^Potion9
  - 19 ^Potion8
  - 19 ^Potion7
  - 19 ^Potion6
  - 19 ^Potion5
  - 19 ^Potion4
  - 19 ^Potion3
  - 19 ^Potion3
  - 19 ^Potion2
  - 19 ^Potion1
  - 17 ^Potion
  - 16 ^Comp
  - 13 ^Phace2
  - 12 ^Phace1
  - 11 ^Phace
Phace:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I don't know you... So I ain't sellin you shit!"
Phace1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome3
    - PERMISSION Gnome5
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I've been hearing about you around town lately... I've heard your trying to figure out whats going on."
        - execute asserver 'pex user <player.name> add Gnome6'
Phace2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION essentials.help
    - PERMISSION Gnome6
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>DoityJoo has been coming in a lot lately... Always buys a fire protection potion."
        - ZAP 2
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>BuhtFuhk's has had some strange company lately, Something is wrong ... but I can't figure it out"
        - ZAP 3
    3:
      Click Trigger:
        Script:
        - CHAT "<&a>If you help us my shop is open to you!"
        - ZAP 1
Potion:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>So what are you lookin' for?"
        - ZAP
      Proximity Trigger:
        Script:
        - CHAT "<&a>Hey Buddy.... Wanna buy some drugs?"
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>I know you <player.name>, We got everything you see on the wall up here..."
      Chat Trigger:
        1:
          Trigger: I'm looking for some /redstone/ dust.
          Script:
           - CHAT "<&a>Okay how much redstone dust?"
           - flag 'potionshopitem:red' 'duration:10'
        2:
          Trigger: I'm looking for a /brew/ing stand.
          Script:
           - CHAT "<&a>How many Brewting stands?"
           - flag 'potionshopitem:brew' 'duration:10'
        3:
          Trigger: I'm looking to get /glowstone/ dust.
          Script:
           - CHAT "<&a>Okay now how much glowstone dust?"
           - flag 'potionshopitem:glow' 'duration:10'
        4:
          Trigger: I'm looking to get some /ghast/ tear.
          Script:
           - CHAT "<&a>Okay how much ghast teear?"
           - flag 'potionshopitem:tear' 'duration:10'
        5:
          Trigger: I'm looking to get /ferment/ed spider eye.
          Script:
           - CHAT "<&a>Okay now how much Fermend Spider eye?"
           - flag 'potionshopitem:ferm' 'duration:10'
        6:
          Trigger: I'm looking to get /blaze/ powder.
          Script:
           - CHAT "<&a>Okay now how much Blaze powder?"
           - flag 'potionshopitem:blaze' 'duration:10'
        7:
          Trigger: I'm looking for some /nether/stalk.
          Script:
           - CHAT "<&a>Okay how many netherstalk?"
           - flag 'potionshopitem:stalk' 'duration:10'
        8:
          Trigger: I'm looking for some /sugar/.
          Script:
           - CHAT "<&a>Okay how much sugar?"
           - flag 'potionshopitem:sugar' 'duration:10'
        9:
          Trigger: I'm looking to get a /cauldron/.
          Script:
           - CHAT "<&a>Okay now how much cauldrons?"
           - flag 'potionshopitem:cauldron' 'duration:10'
        10:
          Trigger: I'm looking to get some /water/ bottle.
          Script:
           - CHAT "<&a>Okay how many water bottles?"
           - flag 'potionshopitem:water' 'duration:10'
        11:
          Trigger: I'm looking to get some /glass/ bottles.
          Script:
           - CHAT "<&a>Okay now how much glass bottles?"
           - flag 'potionshopitem:glass' 'duration:10'
        12:
          Trigger: I'm looking to get some golden /carrot/s.
          Script:
           - CHAT "<&a>Okay now how many golden carrots?"
           - flag 'potionshopitem:carrot' 'duration:10'
        13:
          Trigger: I'm looking to get some /magma/ cream.
          Script:
           - CHAT "<&a>Okay so how many magma cream?"
           - flag 'potionshopitem:cream' 'duration:10'
        14:
          Trigger: I'm looking to get some /gunpowder/.
          Script:
           - CHAT "<&a>Okay GunPowder... How many?"
           - flag 'potionshopitem:gun' 'duration:10'
        15:
          Trigger: I'm looking to get some glistering /melon/.
          Script:
           - CHAT "<&a>Okay now how much Glistering?"
           - flag 'potionshopitem:melon' 'duration:10'
        16:
          Trigger: I'm looking to get some /Spider/ eye.
          Script:
           - CHAT "<&a>Okay that will be how many regular spider eye?"
           - flag 'potionshopitem:spider' 'duration:10'
Potion1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - FLAGGED 'potionshopitem:red'
    - PERMISSION GnomeComplete
    - money qty:100
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:100
        - ^GIVE 331 QTY:16
        - CHAT 'Thanks! Here is your redstone!'
        - NARRATE 'You bought 100 Redstone for 100 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:300
    - FLAGGED 'potionshopitem:brew'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:300
        - ^GIVE 117
        - CHAT 'Thanks! Here is your cauldron.'  
        - NARRATE 'You bought 1 cauldron for 300 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:100
    - FLAGGED 'potionshopitem:glow'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:100
        - ^GIVE 348 QTY:16
        - CHAT 'Thanks! Here is your glowstone dust.'  
        - NARRATE 'You bought 16 glowstone Dust for 100 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:2500
    - FLAGGED 'potionshopitem:tear'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:2500
        - ^GIVE 370 QTY:5
        - CHAT 'Thanks! Here are your ghast tears.'  
        - NARRATE 'You bought 5 ghast tears for 2500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion5:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:1500
    - FLAGGED 'potionshopitem:ferm'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - TAKE money qty:1500
        - GIVE 376 QTY:5
        - CHAT 'Thanks! Here are Fermented Eyes.'  
        - NARRATE 'You bought 5 Fermented Eyes for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion6:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:500
    - FLAGGED 'potionshopitem:blaze'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:500
        - ^GIVE 377 QTY:5
        - CHAT 'Thanks! Here is your powder.'  
        - NARRATE 'You bought 10 Blaze Power for 500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion7:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:1000
    - FLAGGED 'potionshopitem:stalk'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:1000
        - ^GIVE 372 QTY:15
        - CHAT 'Thanks! Here is your NetherStalk.'  
        - NARRATE 'You bought 15 NetherStalk for 1000 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion8:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:250
    - FLAGGED 'potionshopitem:sugar'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:250
        - ^GIVE 353 QTY:64
        - CHAT 'Thanks! Here is your Sugar.'  
        - NARRATE 'You bought 64 Sugar for 250 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion9:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:300
    - FLAGGED 'potionshopitem:cauldron'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:300
        - ^GIVE 380
        - CHAT 'Thanks! Here is your Cauldron.'  
        - NARRATE 'You bought 1 Cauldron for 300 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion10:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:1500
    - FLAGGED 'potionshopitem:water'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - TAKE money qty:1500
        - GIVE 373 QTY:16
        - CHAT 'Thanks! Here is your Water Bottles.'  
        - NARRATE 'You bought 16 Water Bottle for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion11:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:750
    - FLAGGED 'potionshopitem:glass'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:750
        - ^GIVE 374 QTY:16
        - CHAT 'Thanks! Here is your Glass Bottles.'  
        - NARRATE 'You bought 16 Glass Bottle for 750 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion12:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:750
    - FLAGGED 'potionshopitem:carrot'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:750
        - ^GIVE 396 QTY:5
        - CHAT 'Thanks! Here is your Golden Carrots.'  
        - NARRATE 'You bought 5 Glass Bottle for 750 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion13:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:750
    - FLAGGED 'potionshopitem:cream'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - TAKE money qty:750
        - GIVE 378 QTY:3
        - CHAT 'Thanks! Here is your Magma Cream.'  
        - NARRATE 'You bought 3 Magma Cream for 750 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion14:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:1500
    - FLAGGED 'potionshopitem:gun'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - TAKE money qty:1500
        - GIVE 289 QTY:16
        - CHAT 'Thanks! Here is your Gun Powder.'  
        - NARRATE 'You bought 16 Gunpowder 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion15:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:1500
    - FLAGGED 'potionshopitem:melon'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:1500
        - ^GIVE 382 QTY:5
        - CHAT 'Thanks! Here is your Glistering Melon.'  
        - NARRATE 'You bought 5 Glistering Melons 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion16:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty:1600
    - FLAGGED 'potionshopitem:spider'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:1600
        - ^GIVE 375 QTY:16
        - CHAT 'Thanks! Here is your Spider Eyes.'  
        - NARRATE 'You bought 16 Spider Eyes 1600 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Potion17:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - FLAGGED 'potionshopitem'
  Steps:
    1:
      Click Trigger:
        Script:
        - ^NARRATE "Erm... seems you don't have enough money qty:."
        - RESET 'flag:potionshopitem'
