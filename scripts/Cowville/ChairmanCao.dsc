Chairman:
  Type: Assignment
  Interact Scripts:
  - 1 CaoQuest
  - 2 getMilked

CaoQuest:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
        - if <player.flag[caoDone]> OR <player.flag[coxDone]>:
          - chat "<&e><&l>It's only a matter of time now... Those cows will be mine"

        - else if <player.flag[caoQuest]>:
          - chat "<&e><&l>Find a way into that castle... and bring me a mooshroom from that pen. Tie it up on deck when you're done."

        - else if <player.flag[boardCao]>:
          - chat "<&e><&l>You think you're fucking with me man?"
          - narrate "<&4><&l>argghh Im a pirate...?"
          - chat "<&e><&l>You might be able to fool my guards with those weak ass Nikes but I can see right through them... You're just a scared noob."
          - narrate "<&4><&l><player.name><&co>D'= Don't kill me please"
          - chat "<&e><&l>I won't.... But you're working for me now"
          - narrate "<&4><&l>What do you want me to do..."
          - chat "<&e><&l>I want a hostage... There's a pen in the castle. Bring me a mooshroom and tie it up on deck"
          - flag caoQuest
          - flag boardCao:!
          - flag hasNikes:!

        - else:
          - chat "<&e><&l>Get the fuck off my ship."


GetMilked:
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
        - if <player.flag[milkedMe]>:
          - chat "<&e><&l>Do whatever you want with the milk you cheap whore"

        - else if <player.item_in_hand> == bucket:
          - chat "<&e><&l>That's right bitch... Milk me"
          - take iteminhand
          - give milk_bucket[display_name=Milk;lore=Evil]
          - flag milkedMe

        - else:
          - chat "<&e><&l>You want to milk me? Normally I have to pay a whore for that"
