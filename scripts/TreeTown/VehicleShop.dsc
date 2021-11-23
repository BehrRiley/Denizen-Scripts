Vshop:
  Type: Assignment
  Interact Scripts:
  - 18 ^Vehicle17
  - 19 ^Vehicle16
  - 19 ^Vehicle15
  - 19 ^Vehicle14
  - 19 ^Vehicle13
  - 19 ^Vehicle12
  - 19 ^Vehicle11
  - 19 ^Vehicle10
  - 19 ^Vehicle9
  - 19 ^Vehicle8
  - 19 ^Vehicle7
  - 19 ^Vehicle6
  - 19 ^Vehicle5
  - 19 ^Vehicle4
  - 19 ^Vehicle3
  - 19 ^Vehicle3
  - 19 ^Vehicle2
  - 19 ^Vehicle1
  - 17 ^Vehicle
  - 11 ^Phace
Vehicle:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a><&a>So what are you lookin' for?"
        - ZAP
      Proximity Trigger:
        Script:
        - CHAT "<&a><&a>Hey Buddy.... Wanna buy some drugs?"
    2:
      Click Trigger:
        Script:
        - CHAT "<&a><&a>I know you <player.name>, We got everything you see on the wall up here..."
      Chat Trigger:
        1:
          Trigger: I'm looking for some /minecart/.
          Script:
           - CHAT "<&a><&a>Okay how much minecart?"
           - flag 'vehicleshopitem:red' 'duration:10'
        2:
          Trigger: I'm looking for a /chest/ cart.
          Script:
           - CHAT "<&a><&a>How many Chest Carts?"
           - flag 'vehicleshopitem:brew' 'duration:10'
        3:
          Trigger: I'm looking to get /Furnace/ Cart.
          Script:
           - CHAT "<&a><&a>Okay now how much Furnace Carts?"
           - flag 'vehicleshopitem:glow' 'duration:10'
        4:
          Trigger: I'm looking to get some /rail/s.
          Script:
           - CHAT "<&a><&a>Okay how much rail?"
           - flag 'vehicleshopitem:tear' 'duration:10'
        5:
          Trigger: I'm looking to get /power/ed rail.
          Script:
           - CHAT "<&a><&a>Okay now how much Powered rail?"
           - flag 'vehicleshopitem:ferm' 'duration:10'
        6:
          Trigger: I'm looking to get /detect/or rail.
          Script:
           - CHAT "<&a><&a>Okay now how much Detector rails?"
           - flag 'vehicleshopitem:blaze' 'duration:10'
        7:
          Trigger: I'm looking for some /saddle/s.
          Script:
           - CHAT "<&a><&a>Okay how many Saddles?"
           - flag 'vehicleshopitem:stalk' 'duration:10'
        8:
          Trigger: I'm looking for a /Carrot/ on a stick.
          Script:
           - CHAT "<&a><&a>Okay how much Carrots on Sticks?"
           - flag 'vehicleshopitem:sugar' 'duration:10'
Vehicle1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - FLAGGED 'vehicleshopitem:red'
    - PERMISSION GnomeComplete
    - MONEY 100
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:100
        - ^GIVE 328
        - CHAT 'Thanks! Here is your minecart!'
        - NARRATE 'You bought 100 minecart for 100 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Vehicle2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 300
    - FLAGGED 'vehicleshopitem:brew'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:200
        - ^GIVE 342
        - CHAT 'Thanks! Here is your Chest Cart.'  
        - NARRATE 'You bought 1 Chest Cart for 200 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Vehicle3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 100
    - FLAGGED 'vehicleshopitem:glow'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:250
        - ^GIVE 343
        - CHAT 'Thanks! Here is your Furnace Cart.'  
        - NARRATE 'You bought 1 Furnace Cart for 250 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Vehicle4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 2500
    - FLAGGED 'vehicleshopitem:tear'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:500
        - ^GIVE 66 QTY:5
        - CHAT 'Thanks! Here are your rails.'  
        - NARRATE 'You bought 5 rails for 500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Vehicle5:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 1500
    - FLAGGED 'vehicleshopitem:ferm'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - TAKE money qty:1500
        - GIVE 27 QTY:5
        - CHAT 'Thanks! Here are your Powered Rails.'  
        - NARRATE 'You bought 5 Powered Rails for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Vehicle6:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 500
    - FLAGGED 'vehicleshopitem:blaze'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:1000
        - ^GIVE 28 QTY:5
        - CHAT 'Thanks! Here is your Detector Rails.'  
        - NARRATE 'You bought 5 Detector Rails for 1000 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Vehicle7:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 1000
    - FLAGGED 'vehicleshopitem:stalk'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:350
        - ^GIVE 329
        - CHAT 'Thanks! Here is your Saddle.'  
        - NARRATE 'You bought 1 Saddle for 350 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Vehicle8:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 250
    - FLAGGED 'vehicleshopitem:sugar'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:500
        - ^GIVE 398
        - CHAT 'Thanks! Here is your Carrot on a Stick.'  
        - NARRATE 'You bought 1 Carrot on a Stick for 500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Vehicle9:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - FLAGGED 'vehicleshopitem'
  Steps:
    1:
      Click Trigger:
        Script:
        - ^NARRATE "Erm... seems you don't have enough money qty:."
        - RESET 'flag:vehicleshopitem'
