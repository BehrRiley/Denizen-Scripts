MusicShop:
  Type: Assignment
  Interact Scripts:
  - 11 ^Music17
  - 10 ^Music16
  - 9 ^Music15
  - 8 ^Music14
  - 7 ^Music13
  - 6 ^Music12
  - 5 ^Music11
  - 4 ^Music10
  - 3 ^Music9
  - 19 ^Music8
  - 19 ^Music7
  - 19 ^Music6
  - 19 ^Music5
  - 19 ^Music4
  - 19 ^Music3
  - 19 ^Music3
  - 19 ^Music2
  - 19 ^Music1
  - 2 ^Music
  - 1 ^Phace
Music:
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
        - CHAT "<&a><&a>I know you <PLAYER>, We got everything you see on the wall up here..."
      Chat Trigger:
        1:
          Trigger: I'm looking for track /1/.
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:red' 'duration:10'
        2:
          Trigger: I'm looking for track /2/
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:brew' 'duration:10'
        3:
          Trigger: I'm looking for track /3/
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:glow' 'duration:10'
        4:
          Trigger: I'm looking for track /4/
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:tear' 'duration:10'
        5:
          Trigger: I'm looking for track /5/
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:ferm' 'duration:10'
        6:
          Trigger: I'm looking for track /6/
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:blaze' 'duration:10'
        7:
          Trigger: I'm looking for track /7/
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:stalk' 'duration:10'
        8:
          Trigger: I'm looking for track /8/
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:8' 'duration:10'
        9:
          Trigger: I'm looking for track /9/
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:9' 'duration:10'
        10:
          Trigger: I'm looking for track /10/
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:10' 'duration:10'
        11:
          Trigger: I'm looking for track /11/
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:11' 'duration:10'
        12:
          Trigger: I'm looking for track /12/
          Script:
           - CHAT "<&a><&a>Okay how many records?"
           - flag 'musicshopitem:12' 'duration:10'
Music1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - FLAGGED 'musicshopitem:red'
    - PERMISSION GnomeComplete
    - MONEY qty:100
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 2256
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:300
    - FLAGGED 'musicshopitem:brew'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 2257
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY 100
    - FLAGGED 'musicshopitem:glow'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 2258
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:2500
    - FLAGGED 'musicshopitem:tear'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 2259
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music5:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:1500
    - FLAGGED 'musicshopitem:ferm'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 2260
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music6:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:500
    - FLAGGED 'musicshopitem:blaze'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 2261
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music7:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:1000
    - FLAGGED 'musicshopitem:stalk'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 2262
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music8:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:250
    - FLAGGED 'musicshopitem:8'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 2263
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music9:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:1500
    - FLAGGED 'musicshopitem:9'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 2264
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music10:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:1500
    - FLAGGED 'musicshopitem:10'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 2265
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music11:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:1500
    - FLAGGED 'musicshopitem:11'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY QTY:1500
        - ^GIVE 2266
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music12:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - MONEY qty:1500
    - FLAGGED 'musicshopitem:12'
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE MONEY qty:1500
        - ^GIVE 2267
        - CHAT 'Thanks! Here is your record!'
        - NARRATE 'You bought 1 record for 1500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Music13:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - FLAGGED 'musicshopitem'
  Steps:
    1:
      Click Trigger:
        Script:
        - ^NARRATE "Erm... seems you don't have enough money qty:."
        - RESET 'flag:musicshopitem'
