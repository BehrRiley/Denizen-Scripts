ColinPirate:
  Type: Assignment
  Interact Scripts:
  - 1 GetNikes

GetNikes:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.equipment.boots.lore> == lNikes:
          - narrate "<&e><&l>Dayummm Those is some fine Nikes"

        - else if <player.flag[hasNikes]> OR <player.flag[caoQuest]> OR <player.flag[coxDone]>:
          - chat "<&e><&l>Good luck with your Nikes"

        - else if <player.flag[pirateThings]> && <player.inventory.qty[leather]> > 9 && <player.inventory.qty[gold_ingot]> > 9 && <player.inventory.qty[string]> > 9:
          - chat "<&e><&l>That's exactly what I needed"
          - flag hasNikes
          - flag pirateThings:!
          - take leather qty:10
          - take gold_ingot qty:10
          - take string qty:10
          - execute as_server "give <player.name> leatherboots 1 name:<player.name>s lore:Nikes color:255,255,0"

        - else if <player.flag[pirateThings]>:
          - chat "<&e><&l>Like I said... You'll need some fine ass Nikes... What Im going to need is 10 gold ingots 10 string and 10 leather... That will do it"

        - else if <player.flag[pirateClothes]>:
          - chat "<&e><&l>So you're boarding Chairman Cao's ship? You'll need some fine ass Nikes... What Im going to need is 10 gold ingots 10 string and 10 leather... That will do it"
          - flag pirateClothes:!
          - flag pirateThings

        - else:
          - chat "<&e><&l>You need to get the fuck out of my house.... Now."
