Lucian:
  Type: Assignment
  Interact Scripts:
  - 7 ^Unkown
  - 8 ^Strike
  - 9 ^During
  - 10 ^Cliffo
  - 11 ^cliff1
  - 12 ^cliffdone
  - 13 ^cliffafter
  - 24 ^Agro
  - 25 ^After
Cliffo:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged gay
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Hans thinks the smugglers may be planning an attack?"
        - flag gay1
cliff1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged gay1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Go get in good with the smugglers. The ship captain is the boss. He might have some work for you'
cliffdone:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - ingroup smuggler
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>So the smugglers didn't say anything about an attack? A treasure map? Makes sense.... Report back to Hans"
        - flag cliffdone
cliffafter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged cliffdone
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>I'll continue my surveilence of the smugglers."
