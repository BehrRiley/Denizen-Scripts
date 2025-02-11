Mecha:
  Type: Assignment
  Interact Scripts:
  - 18 ^Mech17
  - 19 ^Mech16
  - 19 ^Mech15
  - 19 ^Mech14
  - 19 ^Mech13
  - 19 ^Mech12
  - 19 ^Mech11
  - 19 ^Mech10
  - 19 ^Mech9
  - 19 ^Mech8
  - 19 ^Mech7
  - 19 ^Mech6
  - 19 ^Mech5
  - 19 ^Mech4
  - 19 ^Mech3
  - 19 ^Mech3
  - 19 ^Mech2
  - 19 ^Mech1
  - 17 ^Mech
  - 11 ^Phace
Mech:
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
          Trigger: I'm looking for a redstone /torch/.
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:red' 'duration:10'
        2:
          Trigger: I'm looking for /Sticky/ Piston.
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:brew' 'duration:10'
        3:
          Trigger: I'm looking for a /Piston/
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:glow' 'duration:10'
        4:
          Trigger: I'm looking for a /repeater/
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:tear' 'duration:10'
        5:
          Trigger: I'm looking for a /tripwire/
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:ferm' 'duration:10'
        6:
          Trigger: I'm looking for a /button/
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:blaze' 'duration:10'
        7:
          Trigger: I'm looking for a /lever/
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:stalk' 'duration:10'
        8:
          Trigger: I'm looking for a pressure /plate/
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:8' 'duration:10'
        9:
          Trigger: I'm looking for an iron /door/
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:9' 'duration:10'
        10:
          Trigger: I'm looking for some /tnt/
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:10' 'duration:10'
        11:
          Trigger: I'm looking for some /redstone/ dust.
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:11' 'duration:10'
        12:
          Trigger: I'm looking for a /dispenser/
          Script:
           - CHAT "<&a>Okay how many??"
           - flag 'mechshopitem:12' 'duration:10'
Mech1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - FLAGGED 'mechshopitem:red'
    - PERMISSION GnomeComplete
    - MONEY 500
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:500
        - ^GIVE 76 QTY:6
        - CHAT 'Thanks! Here is your redstone torch!'
        - NARRATE 'You bought 6 redstone torch for 500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Mech2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 300
    - FLAGGED 'mechshopitem:brew'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1200
        - ^GIVE 33 QTY:3
        - CHAT 'Thanks! Here is your Sticky Piston!'
        - NARRATE 'You bought 3 sticky piston for 1200 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Mech3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 100
    - FLAGGED 'mechshopitem:glow'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1000
        - ^GIVE 33 QTY:3
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 3 piston for 1000 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Mech4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 2500
    - FLAGGED 'mechshopitem:tear'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 356 QTY:5
        - CHAT 'Thanks! Here is your repeater!'
        - NARRATE 'You bought 1 repeater for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Mech5:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY QTY:1500
    - FLAGGED 'mechshopitem:ferm'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 132 QTY:6
        - CHAT 'Thanks! Here is your tripwire!'
        - NARRATE 'You bought 1 tripwire for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Mech6:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 500
    - FLAGGED 'mechshopitem:blaze'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:500
        - ^GIVE 77 QTY:5
        - CHAT 'Thanks! Here is your button!'
        - NARRATE 'You bought 1 button for 500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Mech7:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 500
    - FLAGGED 'mechshopitem:stalk'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:500
        - ^GIVE 69 QTY:5
        - CHAT 'Thanks! Here is your levers.'
        - NARRATE 'You bought 5 lever for 500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Mech8:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY QTY:500
    - FLAGGED 'mechshopitem:8'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:500
        - ^GIVE 70 QTY:3
        - CHAT 'Thanks! Here is your Pressure Plate!'
        - NARRATE 'You bought 3 Pressure Plates for 500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Mech9:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY QTY:3000
    - FLAGGED 'mechshopitem:9'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:350
        - ^GIVE 330
        - CHAT 'Thanks! Here is your iron door!'
        - NARRATE 'You bought 1 iron door for 350 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Mech10:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY QTY:3000
    - FLAGGED 'mechshopitem:10'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:3000
        - ^GIVE 46 QTY:16
        - CHAT 'Thanks! Here is your tnt!'
        - NARRATE 'You bought 16 redstone for 3000 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Mech11:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY QTY:500
    - FLAGGED 'mechshopitem:11'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:750
        - ^GIVE 331 QTY:16
        - CHAT 'Thanks! Here is your redstone!'
        - NARRATE 'You bought 1 redstone for 750 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Mech12:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY QTY:1500
    - FLAGGED 'mechshopitem:12'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:500
        - ^GIVE 23
        - CHAT 'Thanks! Here is your dispenser!'
        - NARRATE 'You bought 1 dispenser for 500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
