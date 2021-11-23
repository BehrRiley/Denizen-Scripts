Wrangler:
  Type: Assignment
  Interact Scripts:
  - 1 HayQuest

HayQuest:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[hayDone]> OR <player.flag[coxDuring]>:
          - chat "<&e><&l>Thanks for helping feed the horses... They're doing a lot better"

        - else if <player.inventory.qty[hay_block]> > 9:
          - chat "<&e><&l>That's exactly what we needed."
          - take hay_block qty:10
          - flag hayDone
          - flag hayDuring:!

        - else if <player.flag[hayDuring]>:
          - chat "<&e><&l>We need hay bales to feed the horses... 10 should be enough"

        - else:
          - chat "<&e><&l>The horses are starving.... We need hay quickly"
          - flag hayDuring
