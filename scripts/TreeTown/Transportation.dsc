HorseBilly:
  Type: Assignment
  Interact Scripts:
  - 1 BillyNo
  - 2 BillyGo
BillyGo:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - permission craft.horsearmor
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "We R Go!"
        - execute as_op "warp KingShire"
BillyNo:
  Type: Interact
  Requirements:
    Mode: None
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "I don't know you.... NEIGH!"
    