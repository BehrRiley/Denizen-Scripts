Thomas:
  Type: Assignment
  Interact Scripts:
  - 7 ^Unkown
  - 8 ^Strike
  - 9 ^During
  - 10 ^Ocean1
  - 11 ^Ocean2
  - 12 ^Oceandone
  - 13 ^Oceanafter
  - 24 ^Agro
  - 25 ^After
Ocean1:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged ocean
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT '<&a>Hello do I know you? Hans sent you?'
        - zap
    2:
      Click Trigger:
        Script:
        - CHAT "<&a>Okay here's the deal.... There's been some activity offshore. I've been seeing some weird things at night."
        - flag ocean1
Ocean2:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged ocean1
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Go check out the mysterious lights off shore. This may have to do with the upcoming attack."
Oceandone:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged booty
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>A skeleton seeking booty? Well that doesn't sound like a threat to me... Report to Hans there's no threat"
        - flag oceandone
Oceanafter:
  Type: Interact
  Requirements:
    Mode: All
    List:
    - ingroup friendly
    - flagged oceandone
  Steps:
    1:
      Click Trigger:
        Script:
        - CHAT "<&a>Who woulda thought... A skeleton pirate"
