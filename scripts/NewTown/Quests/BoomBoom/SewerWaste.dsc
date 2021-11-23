SewerWaste:
  Type: Assignment
  Interact Scripts:
  - 1 precious

Precious:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[BoomBoomList]> == null:
          - flag BoomBoomList:->:0

        - if <player.flag[preciousDone]>:
          - chat "<&e><&l>Thanks for all your help"

        - else if <player.flag[theSource]> && <player.item_in_hand.lore> == lBoomBoom && <player.item_in_hand.display_name> == "Precious":
          - chat "<&e><&l>That is the precious BoomBoom!"
          - flag theSource:!
          - flag preciousStart:!
          - flag PreciousDone
          - run script:PreciousFinish

        - else if <player.flag[theSource]>:
          - chat "<&e><&l>Like I said... Find the source of our BoomBoom and bring us a solid piece... I imagine it's some sort of BoomBoom God produces BoomBoom suches as this..."

        - else if <player.flag[BoomBoomList].size> > 4:
          - chat "<&e><&l>Okay.... I have plenty... But this BoomBoom isn't strong enough..."
          - narrate "<&4><&l><player.name><&co> Not strong enough?"
          - chat "<&e><&l>The BoomBoom in the water here has super natural powers. If we could get a piece of it, wed be okay. Go to the source...."
          - flag theSource

        - else if <player.item_in_hand.lore> == lBoomBoom:
          - run script:BoomCheck

        - else if <player.flag[preciousStart]>:
          - chat "<&e><&l>Like I said... Fresh BoomBoom from 5 different people... Bring me the BoomBoom!"

        - else if <player.flag[wifeDone]>:
          - flag preciousStart
          - chat "<&e><&l>I heard what you did for DrStinky's wife... Maybe you can help me out."
          - narrate "<&4><&l><player.name><&co> Yeah I saved that bitches life... I can help you"
          - chat "<&e><&l>Well... We down here in BoomBoomTown survive on BoomBoom unfortunately... There's been a BoomBoomDrought"
          - narrate "<&4><&l><player.name><&co> A Boom Boom Drought? That doesn't sound good"
          - chat "<&e><&l>Yes and we're going to need to directly apply some fresh BoomBoom to our BoomBoom crops... We need fresh BoomBoom"

        - else:
          - chat "<&e><&l>I don't know you so don't talk to me"

BoomCheck:
  Type: Task
  Script:
    - if <player.flag[BoomBoomList].contains[<player.item_in_hand.display_name>]>:
      - chat "<&e><&l>I already have that players BoomBoom"

    - else if <player.item_in_hand.display_name> == "BoomBoomStoo":
      - chat "<&e><&l>That's BoomBoomStoo"

    - else if <player.item_in_hand.display_name> == "Precious":

    - else:
      - chat "<&e><&l>That's what we're looking for!"
      - flag BoomBoomList:->:<player.item_in_hand.display_name>
      - take iteminhand

PreciousFinish:
  Type: Task
  Script:
    - firework random
    - execute as_server "region addmember sewerPark <player.name>"
    - narrate "<&4><&l>You've finished Precious BoomBoom"
    - narrate "<&4><&l>You can now flush yourselves down toilets to get to BoomBoomTown"
    - narrate "<&4><&l>You've earned $10,000"
    - narrate "<&4><&l>You've earned 20 McMMO Credits"
    - execute as_server "addcredits <player.name> 20"
    - give money qty:10000
  