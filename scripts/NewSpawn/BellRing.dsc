BellRing:
  Type: World
  Events:
    On Player Right Clicks Gold_Block:
      - if <context.location> == <server.flag[churchBell]> && !<player.flag[ringing]>:
        - flag Ringing duration:10s
        - showfake lava <server.flag[cryptCross].as_list> to:<player> duration:10s
        - showfake glass <server.flag[cryptDoor].as_list> to:<player> duration:10s
        - run script:Ringing

Ringing:
  Type: Task
  Script:
    - if <player.flag[Ringing]>:
      - playsound note_pling <player.location>
      - run script:Ringing delay:2s

CryptEnter:
  Type: World
  Events:
    On Player Right Clicks Mossy_Stone_Brick:
      - if <player.location.regions.contains[crypt]>:
        - teleport <server.flag[leaveCrypt]>
        - determine cancelled

      - if <server.flag[cryptDoor].as_list.contains[<context.location>]>:
        - if <player.flag[Ringing]>:

          - if <player.location.regions.contains[crypt]>:

          - else:
            - narrate "<&4><&l>You're pulled through the wall"
            - teleport <server.flag[enterCrypt]>

        - else:
          - narrate "<&4><&l>There's something strange about this wall..."
