HolyMan:
  Type: Assignment
  Interact Scripts:
  - 1 ChickenGuy

ChickenGuy:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[gotEggs]> OR <player.flag[cakeDone]>:
          - chat "<&e><&l>I don't know what you did to get that chicken to lay an egg..."

        - else if <player.flag[cakeDuring]>:
          - chat "<&e><&l>An egg from that chicken? That chicken hasn't laid an egg in years... Must be it is its diet or something"

        - else:
          - chat "<&e><&l>Welcome to the church."
