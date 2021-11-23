Headshop:
  Type: Assignment
  Interact Scripts:
  - 19 ^Head7
  - 19 ^Head6
  - 19 ^Head5
  - 19 ^Head4
  - 19 ^Head3
  - 19 ^Head3
  - 19 ^Head2
  - 19 ^Head1
  - 17 ^Head
  - 11 ^Phace
Head:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I know you <player.name>, We got everything you see on the wall up here..."
      Chat Trigger:
        1:
          Trigger: I'm looking for the skull of a /skeleton/.
          Script:
           - CHAT "<&a><&a>Okay how many?"
           - flag headshopitem:skeleton duration:10s
        2:
          Trigger: I'm looking for the skull of a /creeper/
          Script:
           - CHAT "<&a><&a>Okay how many?"
           - flag headshopitem:creeper duration:10s
        3:
          Trigger: I'm looking for the skull of a /Wither/
          Script:
           - CHAT "<&a><&a>Okay how many?"
           - flag headshopitem:wither duration:10s
        4:
          Trigger: I'm looking for the skull of a /Steve/
          Script:
           - CHAT "<&a><&a>Okay how many?"
           - flag headshopitem:steve duration:10s
        5:
          Trigger: I'm looking for the skull of a /Steph/messios.
          Script:
           - CHAT "<&a><&a>Okay how many?"
           - flag headshopitem:steph duration:10s
        6:
          Trigger: I'm looking for the skull of a /Zombie/
          Script:
           - CHAT "<&a><&a>Okay how many?"
           - flag headshopitem:zombie duration:10s
Head1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - FLAGGED headshopitem:skeleton
    - PERMISSION GnomeComplete
    - money qty: 100
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:500
        - ^GIVE 397
        - CHAT 'Thanks! Here is your skull!'
        - NARRATE 'You bought 1 skull for 500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Head2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty: 300
    - FLAGGED headshopitem:creeper
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:1500
        - ^GIVE 397:4
        - CHAT 'Thanks! Here is your skull!'
        - NARRATE 'You bought 1 skull for 750 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Head3:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty: 100
    - FLAGGED headshopitem:wither
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:6000
        - ^GIVE 397:1
        - CHAT 'Thanks! Here is your skull!'
        - NARRATE 'You bought 1 skull for 6,000 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Head4:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty: 2500
    - FLAGGED headshopitem:steve
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:1500
        - ^GIVE 397:3
        - CHAT 'Thanks! Here is your skull!'
        - NARRATE 'You bought 1 skull for 1000 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Head5:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - FLAGGED headshopitem:steph
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Why would you want that one.... That one is uhhh gay... Yeah it's gay...."
        - NARRATE "<&4> You don't buy any because you don't want people to think your a queer... Right?'"
Head6:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - money qty: 2500
    - FLAGGED headshopitem:zombie
    - PERMISSION GnomeComplete
  Steps:
    1:
      Click Trigger:
        Script:
        - ^TAKE money qty:500
        - ^GIVE 397:2
        - CHAT 'Thanks! Here is your skull!'
        - NARRATE 'You bought 1 skull for 500 foodstamps! Sweet!'
        - NARRATE 'Right click again to buy some more.'
Head7:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - FLAGGED 'headshopitem'
  Steps:
    1:
      Click Trigger:
        Script:
        - ^NARRATE "Erm... seems you don't have enough money qty:."
        - RESET flag:headshopitem
