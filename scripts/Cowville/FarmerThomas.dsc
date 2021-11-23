FarmerThomas:
  Type: Assignment
  Interact Scripts:
  - 1 FarmerQuest
  - 2 CakeHelper

FarmerQuest:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[farmerDone]> OR <player.flag[coxDuring]> OR <player.flag[coxDone]>:
          - chat "<&e><&l>Thanks! Our crops will be done in no time now!"

        - else if <player.item_in_hand.lore> == lBoomBoom :
          - chat "<&e><&l>That will make perfect fertilizer thank you!"
          - take iteminhand
          - flag farmerDone
          - flag farmerDuring:!

        - else if <player.item_in_hand> == bonemeal :
          - chat "<&e><&l>We need something stronger than that!"

        - else if <player.flag[farmerDuring]>:
          - chat "<&e><&l>If only we had something to fertilize the crops...."

        - else:
          - chat "<&e><&l>Our farms aren't growing fast enough... This siege is definitely taking its toll."
          - flag farmerDuring

CakeHelper:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - flagged cakeDuring
    - flagged coxDone
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[wheatHelped]>:
          - chat "<&e><&l>Take those items back to the Chef"

        - else if <player.item_in_hand.lore> == lBoomBoom <player.item_in_hand.qty> > 9:
          - chat "<&e><&l>That is some fine ass fertilizer"
          - take iteminhand qty:10
          - flag wheatHelped
          - give sugar[display_name=Sugar;lore=Master]
          - give wheat[display_name=Wheat;lore=Master]

        - else:
          - chat "<&e><&l>So you need some quality wheat and sugar? You've come to the right place... I'm going to need more fertilizer though. 10 should do."
