Clergy:
  Type: Assignment
  Interact Scripts:
  - 1 PrayerQuest

PrayerQuest:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[prayerDone]> OR <player.flag[coxDuring]>:
          - chat "<&e><&l>Thanks for all your help"

        - else if <player.item_in_hand.display_name> == "PrayerBook" && <player.item_in_hand.qty> > 19:
          - chat "<&e><&l>That's what we needed! Thanks a lot <player.name>"
          - take iteminhand qty:20
          - flag PrayerDone
          - flag prayerDuring:!

        - else if <player.flag[prayerDuring]>:
          - chat "<&e><&l>If we only had some Prayers.... That would definitely turn this place around. 20 should be enough"

        - else:
          - chat "<&e><&l>Hello there <player.name>.... Unfortunately the church isn't doing well.."
          - flag prayerDuring
