SongSwitch:
  Type: World
  Events:
    On Player Left Clicks With watch:
      - if <player.is_sneaking>:
        - if <player.item_in_hand.lore> == lMixTape:
          - if <player.flag[musicChoice]> == 1:
            - flag musicChoice:<server.flag[musicList].as_list.size>
            - narrate "<&e><&l>Current Song Choice<&co><&4><&l><server.flag[musicList].as_list.get[<player.flag[musicChoice].as_int>]>"
            - determine cancelled
        
          - else:
            - flag musicChoice:--
            - narrate "<&e><&l>Current Song Choice<&co><&4><&l><server.flag[musicList].as_list.get[<player.flag[musicChoice].as_int>]>"
            - determine cancelled

      - if <player.item_in_hand.lore> == lMixTape:
        - if <player.flag[musicChoice]> == <server.flag[musicList].as_list.size>:
          - flag musicChoice:1
          - narrate "<&e><&l>Current Song Choice<&co><&4><&l><server.flag[musicList].as_list.get[<player.flag[musicChoice].as_int>]>"

        - else:
          - flag musicChoice:++
          - narrate "<&e><&l>Current Song Choice<&co><&4><&l><server.flag[musicList].as_list.get[<player.flag[musicChoice].as_int>]>"

SongPlay:
  Type: World
  Events:
    On Player Right Clicks JukeBox with watch:
      - if <player.item_in_hand.lore> == lMixTape:
        - midi cancel <context.location>
        - narrate "<&e><&l>Now playing <&4><&l><server.flag[musicList].as_list.get[<player.flag[musicChoice].as_int>]>"
        - midi <server.flag[musicList].as_list.get[<player.flag[musicChoice].as_int>]> <context.location>

SongStop:
  Type: World
  Events:
    On Player Left Clicks JukeBox with watch:
      - if <player.item_in_hand.lore> == lMixTape:
        - midi cancel <context.location>
        - narrate "<&4><&l>Song Stopped"
        - determine cancelled
