FlashCannon:
  Type: Assignment
  Interact Scripts:
  - 1 CannonQuest
  Actions:
    On Assignment:
      - trigger name:proximity toggle:true radius:20
    On Enter Proximity:
      - run script:RandomFire

CannonQuest:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[cannonDone]> OR <player.flag[coxDuring]>:
          - chat "<&e><&l>With that TnT we can keep on fighting!"
          - run script:TownFire

        - else if <player.inventory.qty[tnt]> > 63:
          - chat "<&e><&l>That's exactly what we needed"
          - take tnt qty:64
          - flag cannonDone
          - flag cannonDuring:!

        - else if <player.flag[cannonDuring]>:
          - chat "<&e><&l>Without another stack of TnT... We're not going to last much longer"

        - else:
          - chat "<&e><&l>Our TnT Stocks are getting pretty low... We won't be able to continue at this rate... we need more ammo"
          - flag cannonDuring

RandomFire:
  Type: Task
  Script:
    - flag global cannonTimer duration:5s
    - define cannonChance <util.random.int[<1>].to[<5>]>
    - if <[cannonChance]> == 5:
      - run script:ShipFire
      - chat "<&e><&l>Watch out!"
