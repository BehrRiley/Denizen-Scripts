ParkourFix:
  Type: World
  Events:
    On Player Right Clicks With Ender_Pearl:
      - if <player.location.regions.contains[pvp]> OR <player.location.regions.contains[sewerPark]> OR <player.location.regions.contains[park]> OR <player.location.regions.contains[vippark]> OR <player.location.regions.contains[hero]> OR <player.location.regions.contains[super]>:
        - narrate "No Ender Pearling silly bitch"
        - determine cancelled

GrapplingHook:
  Type: World
  Events:
    On Player Right Clicks With Fishing_Rod:
      - if <player.location.regions.contains[pvp]> OR <player.location.regions.contains[sewerPark]> OR <player.location.regions.contains[park]> OR <player.location.regions.contains[vippark]> OR <player.location.regions.contains[hero]> OR <player.location.regions.contains[super]>:
        - narrate "Nope sill bitch play fir"
        - determine cancelled

BowStopper:
  Type: World
  Events:
    On Player Shoots Bow:
      - if <player.location.regions.contains[pvp]>:
        - narrate targets:NiggerBob "this works"
        - if <player.inventory.qty[eye_of_ender]> > 0:
          - take eye_of_ender qty:100
          - narrate "Ill take those eyes of ender... Play Fair Bitch"
          - determine cancelled
