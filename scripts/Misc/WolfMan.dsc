Wolfman:
  Type: Assignment
  Interact Scripts:
  - 1 PlankStart
  - 2 PlankDuring
  - 3 HasPlanks
  - 4 PlankAfter
  
PlankStart:
  Type: Interact
  Requirements:
    Mode: none
    List:
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Bring me 10 planks"
        - flag PlankQuest
PlankDuring:
  Type: Interact
  Requirements:
    Mode: all
    List:
    - flagged PlankQuest
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Where's my planks?"
HasPlanks:
  Type: Interact
  Requirements:
    Mode: all
    List:
    - flagged PlankQuest
    - Item 5 Qty:10
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Thanks for bringing me the planks!"
        - flag Plank Quest:!
        - take 5 Qty:5
        - give Money Qty:200
        - flag PlankDone
PlankAfter:
  Type: Interact
  Requirements:
    Mode: all
    List:
    - flagged PlankDone
  Steps:
    1:
      Click Trigger:
        Script:
        - chat "Thanks for all your help!"
