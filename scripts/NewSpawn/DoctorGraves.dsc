DoctorGraves:
  Type: Assignment
  Interact Scripts:
  - 1 HellQuest

HellQuest:
  Type: Interact
  Steps:
    1:
      Click Trigger:
        Script:
          - if <player.flag[hellDone]>:
            - chat "<&e><&l>Thanks for the help..."

          - else if <player.flag[gotSoulHead]>:
            - chat "<&e><&l>Wear that head... go to Soul Guardians lair. Find the way into Hell... I know its in that room somewhere"

          - else if <player.flag[getSoulHead]> && <player.inventory.contains[human_skull[skull_skin=Soul_Guardian]]>:
            - chat "<&e><&l>That's exactly what I needed..."
            - flag getSoulHead:!
            - flag gotSoulHead

          - else if <player.flag[getSoulHead]>:
            - chat "<&e><&l>I need that Soul Guardian Head <player.name>"

          - else if <player.flag[hellDuring]>:
            - chat "<&e><&l>I've been studying for decades and my research tells me theres a way into hell...."
            - narrate "<&4><&l><player.name><&co> Hell?"
            - chat "<&e><&l>Yes... I need to study the head of a certain being. A soul guardian"
            - narrate "<&4><&l><player.name><&co> Not him! He's scary"
            - chat "<&e><&l>I believe that head holds the final key I need to get into hell..."
            - flag getSoulHead

          - else:
            - chat "<&e><&l>You there... You found my hideout. I could use your help..."
            - flag hellDuring
